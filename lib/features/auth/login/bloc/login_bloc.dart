import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      event.whenOrNull(emailChanged: (value) {
        final email = Email.dirty(value);
        emit(validateLoginFormStatus(state.copyWith(email: email)));
      }, passwordChanged: (value) {
        final password = Password.dirty(value);
        emit(validateLoginFormStatus(state.copyWith(password: password)));
      }, rememberUser: () {
        emit(
          validateLoginFormStatus(
            state.copyWith(rememberUser: !state.rememberUser),
          ),
        );
      });
    });
  }

  LoginState validateLoginFormStatus(LoginState value) {
    return value.copyWith(
        loginFormStatus: Formz.validate([
      value.email,
      value.password,
    ]));
  }
}

extension ExLoginBLoc on BuildContext {
  LoginBloc get bloc => read<LoginBloc>();
  void addLoginEvent(LoginEvent event) => bloc.add(event);
}
