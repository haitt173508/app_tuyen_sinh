class BaseError {
  final dynamic code;
  final String? message;
  final dynamic data;

  BaseError({
    this.code,
    this.message,
    this.data,
  });

  factory BaseError.fromJson(Map json) => BaseError(
        code: json['code'],
        message: json['message'],
        data: json['data'],
      );
}
