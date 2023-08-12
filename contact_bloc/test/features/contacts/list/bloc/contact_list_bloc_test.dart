import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/models/contact_model.dart';
import 'package:contact_bloc/features/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  late ContactsRepository repository;
  late ContactListBloc bloc;
  late List<ContactModel> contacts;

  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactListBloc(repository: repository);
    contacts = [
      ContactModel(name: "Douglas Poma", email: "douglaspoma@yahoo.com"),
      ContactModel(name: "Elaine dos Santos", email: "nany@gmail.com")
    ];
  });

  blocTest<ContactListBloc, ContactListState>(
    'Should load contacts',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    setUp: () {
      when(
        () => repository.findAll(),
      ).thenAnswer((_) async => contacts);
    },
    expect: () => [
      ContactListState.loading(),
      ContactListState.data(contacts: contacts),
    ],
  );
  blocTest<ContactListBloc, ContactListState>(
    'Should return error on load contacts',
    build: () => bloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    expect: () => [
      ContactListState.loading(),
      ContactListState.error(error: 'Erro ao buscar contatos')
    ],
  );

  /* testWidgets('contact list bloc ...', (tester) async {
    // TODO: Implement test
  }); */
}
