class UserNotDefinedFail implements Exception {
  final String message;
  const UserNotDefinedFail(this.message);

  @override
  String toString() => message;
}
