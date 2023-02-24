class ApiResponse<T> {
  final String message;
  final bool success;
  String? code;
  T? object;

  ApiResponse({required this.message, required this.success, this.object,this.code});
}
