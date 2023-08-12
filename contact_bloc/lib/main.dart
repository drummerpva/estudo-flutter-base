import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts/update/bloc/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/features/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/contacts_list_cubit_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/models/contact_model.dart';
import 'package:contact_bloc/features/repositories/contacts_repository.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => ContactsRepository(),
      child: MaterialApp(
        title: 'Contacts',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'contacts/list/cubit',
        routes: {
          '/home': (_) => const HomePage(),
          '/example/bloc': (_) => BlocProvider(
                create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
                child: const BlocExample(),
              ),
          '/example/bloc/freezed': (_) => BlocProvider(
                create: (_) => ExampleFreezedBloc()
                  ..add(const ExampleFreezedEvent.findNames()),
                child: const BlocFreezedExample(),
              ),
          '/contacts/list': (_) => BlocProvider(
                create: (context) => ContactListBloc(
                    repository: context.read<ContactsRepository>())
                  ..add(const ContactListEvent.findAll()),
                child: const ContactsListPage(),
              ),
          '/contacts/register': (context) => BlocProvider(
              create: (context) =>
                  ContactRegisterBloc(contactsRepository: context.read()),
              child: ContactRegisterPage()),
          '/contacts/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) =>
                  ContactUpdateBloc(contactsRepository: context.read()),
              child: ContactUpdatePage(contact: contact),
            );
          },
          'contacts/list/cubit': (context) {
            return BlocProvider(
              create: (context) =>
                  ContactListCubit(repository: context.read())..findAll(),
              child: ContactsListCubitPage(),
            );
          }
        },
      ),
    );
  }
}
