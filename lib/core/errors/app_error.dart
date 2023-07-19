class AppError {
  final String? title;
  final String message;
  final String? code;

  /// this status for specific error with specific http status
  /// like 409 for conflict data in the server that happened in category create and update
  final int? status;

  const AppError({
    this.title,
    this.status,
    this.code,
    required this.message,
  });
}
