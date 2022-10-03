import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suntech_it_e_com_app/core/models/response_model/response_model.dart';
import 'package:suntech_it_e_com_app/core/models/user/user_model.dart';
import 'package:suntech_it_e_com_app/features/auth/auth_form_models/auth_form_models.dart';
import 'package:suntech_it_e_com_app/features/auth/login/data/repositories/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;
  LoginBloc({required LoginRepository loginRepository})
      : _loginRepository = loginRepository,
        super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.whenOrNull(emailChanged: (value) {
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
      }, submit: () async {
        //todo add the auth type when logging using social media
        // emit(state.copyWith(authType: AuthType.emailPassword));
        final result = await _loginRepository.signInUsingEmailPassword(
            state.email, state.password, state.rememberUser);

        result.fold(
          (l) {
            //emit the error state
            emit(state.copyWith(
              loginFormStatus: FormzStatus.submissionFailure,
              submissionFailureMessage: l.message,
            ));
          },
          (tuple2) {
            //emit the success state
            emit(state.copyWith(
              loginFormStatus: FormzStatus.submissionSuccess,
              responseModel: tuple2.value1,
              user: tuple2.value2,
            ));
          },
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
