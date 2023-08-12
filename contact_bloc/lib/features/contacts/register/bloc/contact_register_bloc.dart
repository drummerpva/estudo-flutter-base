import 'dart:async';
import 'dart:developer';

import 'package:contact_bloc/features/models/contact_model.dart';
import 'package:contact_bloc/features/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_bloc.freezed.dart';
part 'contact_register_state.dart';
part 'contact_register_event.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  ContactsRepository _contactsRepository;
  ContactRegisterBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  FutureOr<void> _save(_Save event, Emitter<ContactRegisterState> emit) async {
    try {
      emit(const ContactRegisterState.loading());
      final newContact = ContactModel(name: event.name, email: event.email);
      await _contactsRepository.create(newContact);
      emit(const ContactRegisterState.success());
    } catch (e, s) {
      log("Error on save contact: ", error: e, stackTrace: s);
      emit(const ContactRegisterState.error(
          message: "Erro ao salvar um novo contato"));
    }
  }
}
