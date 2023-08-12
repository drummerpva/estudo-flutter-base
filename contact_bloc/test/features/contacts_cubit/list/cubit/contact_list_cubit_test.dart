import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/models/contact_model.dart';
import 'package:contact_bloc/features/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  late ContactsRepository repository;
  late ContactListCubit bloc;
  late List<ContactModel> contacts;

  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactListCubit(repository: repository);
    contacts = [
      ContactModel(name: "Douglas Poma", email: "douglaspoma@yahoo.com"),
      ContactModel(name: "Elaine dos Santos", email: "nany@gmail.com")
    ];
  });

  blocTest<ContactListCubit, ContactListCubitState>(
    'Should load contacts',
    build: () => bloc,
    act: (cubit) => cubit.findAll(),
    setUp: () {
      when(
        () => repository.findAll(),
      ).thenAnswer((_) async => contacts);
    },
    expect: () => [
      ContactListCubitState.loading(),
      ContactListCubitState.data(contacts: contacts),
    ],
  );
}
