import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import 'package:suntech_it_e_com_app/core/models/user/user_model.dart';
import 'package:suntech_it_e_com_app/core/parsers/custom_jwt_parser.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  ///flutter secure storage
  final FlutterSecureStorage _flutterSecureStorage;

  AppBloc({required FlutterSecureStorage flutterSecureStorage})
      : _flutterSecureStorage = flutterSecureStorage,
        super(const AppState()) {
    on<_AuthStatusChanged>(_onAuthStatusChanged);
    on<_LogoutRequested>(_onLogoutRequested);
    on<_GetToken>(_onGetTokenReceived);

    add(const AppEvent.getToken());

    //check the token of the user
  }

  FutureOr<void> _onAuthStatusChanged(
      _AuthStatusChanged event, Emitter<AppState> emit) {
    if (event.user.isNotEmpty) {
      emit(const AppState(status: AppStatus.authenticated));
    } else {
      emit(const AppState(status: AppStatus.unauthenticated));
    }
  }

  FutureOr<void> _onLogoutRequested(
      _LogoutRequested event, Emitter<AppState> emit) async {
    //clear the token in flutter secure storage
    await _flutterSecureStorage.delete(key: 'token');
    add(const AppEvent.authStatusChanged(User.empty));
  }

  FutureOr<void> _onGetTokenReceived(
      _GetToken event, Emitter<AppState> emit) async {
    final token = await _flutterSecureStorage.read(key: 'token');

    if (token != null) {
      final data = parseJwt(token);
      Logger().i(data);
      if (DateTime.fromMillisecondsSinceEpoch(data["exp"] * 1000)
          .isAfter(DateTime.now())) {
        add(AppEvent.authStatusChanged(User.empty
            .copyWith(fullName: data["fullName"], email: data["email"])));
      } else {
        add(const AppEvent.authStatusChanged(User.empty));
      }
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}

extension ExSignUpBLoc on BuildContext {
  AppBloc get bloc => read<AppBloc>();
  void addAppEvent(AppEvent event) => bloc.add(event);
}
