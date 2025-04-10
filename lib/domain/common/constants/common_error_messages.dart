enum ErrorMessages {
  invalidParameter('無効なパラメータです'),
  unknown('未知のエラーが発生しました');

  const ErrorMessages(this.message);

  final String message;
}
