import 'package:colaborativa_app/domain/failure.dart';

class PhoneAuthFailure extends Failure {
  @override
  String get message =>
      'Falha ao verficar o número de telefone. Verifique se o número está correto.';
}
