class Failure
{
  final String message;
  final String statusCode;

  Failure({this.message = "An unexpected error occurred", required this.statusCode});
}