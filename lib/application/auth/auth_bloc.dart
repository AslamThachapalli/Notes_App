import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_app/domain/auth/i_auth_facade.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const Unauthenticated(),
          (_) => const Authenticated(),
        ),
      );
    });
    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const Unauthenticated());
    });
  }
}
