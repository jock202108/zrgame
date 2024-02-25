class EasyResponse<T> {
  late T data;
  late bool isSuccess;
  late String message;

  EasyResponse({
    required this.data,
    required this.isSuccess,
    required this.message,
  });

}
