enum Errors {
  invalidPhoneNumber('Número de telefone inválido'),
  invalidSmsCode('Código de confirmação inválido');

  final String message;

  const Errors(this.message);

  @override
  String toString() {
    return message;
  }
}
