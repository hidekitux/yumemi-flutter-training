enum CommonErrorMessages {
  invalidParameter('無効なパラメータです'),
  unknown('未知のエラーが発生しました');

  const CommonErrorMessages(this.message);

  final String message;
}
