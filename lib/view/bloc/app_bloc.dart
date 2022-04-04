import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/auth/get_auth_status.dart';
import '../../domain/auth/auth_status.dart';
import '../../domain/auth/phone_status.dart';
import '../../domain/user/user.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final GetAuthStatus _getAuthStatus;

  AppBloc({
    required GetAuthStatus getAuthStatus,
  })  : _getAuthStatus = getAuthStatus,
        super(const AppState.none()) {
    on<_AppLoadUser>(_onLoadUser);
    on<_AppChangeAuthStatus>(_onChangeAuthStatus);
  }

  void _onLoadUser(_AppLoadUser event, Emitter<AppState> emit) {
    emit(const AppState.starting());
    _getAuthStatus().listen(
      (authStatus) => add(AppEvent.changeAuthStatus(authStatus)),
    );
  }

  void _onChangeAuthStatus(_AppChangeAuthStatus event, Emitter<AppState> emit) {
    emit(event.status.when(
      none: () => const AppState.none(),
      authenticated: (user) => AppState.authenticated(user),
      unregistered: (user) => AppState.unregistered(user),
      waitingSmsCode: (phoneStatus) => AppState.waitingSmsCode(phoneStatus),
      unauthenticated: () => const AppState.unauthenticated(),
    ));
  }
}
