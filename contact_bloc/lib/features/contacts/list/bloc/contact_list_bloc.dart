import 'dart:async';
import 'dart:developer';

import 'package:contact_bloc/features/models/contact_model.dart';
import 'package:contact_bloc/features/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';
part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository _repository;
  ContactListBloc({required ContactsRepository repository})
      : _repository = repository,
        super(ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
    on<_ContactListEventDelete>(_deleteById);
  }

  Future<void> _findAll(
      _ContactListEventFindAll event, Emitter<ContactListState> emit) async {
    try {
      emit(ContactListState.loading());
      final contacts = await _repository.findAll();
      // await Future.delayed(const Duration(seconds: 2));
      emit(ContactListState.data(contacts: contacts));
    } catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(ContactListState.error(error: 'Erro ao buscar contatos'));
    }
  }

  FutureOr<void> _deleteById(
      _ContactListEventDelete event, Emitter<ContactListState> emit) async {
    try {
      emit(ContactListState.loading());
      await _repository.delete(event.contact);
      add(const ContactListEvent.findAll());
    } catch (e, s) {
      log("Erro ao deletar usuário", error: e, stackTrace: s);
      emit(ContactListState.error(error: "Erro ao excluir contato!"));
    }
  }
}