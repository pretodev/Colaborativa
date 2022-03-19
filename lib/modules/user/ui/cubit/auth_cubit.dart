import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../business/commands/check_user.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final CheckUser _checkUserStatus;

  AuthCubit({required CheckUser checkUser})
      : _checkUserStatus = checkUser,
        super(const AuthState.none()) {
    loadUserStatus();
  }

  void loadUserStatus() {
    _checkUserStatus().listen((user) {
      if (user == null) {
        emit(const AuthState.unauthenticated());
        return;
      }
      emit(const AuthState.authenticated());
    });
  }
}
