import 'package:fpdart/fpdart.dart';
import 'package:time_capsule/core/error/faliure.dart';

abstract interface class HomeRepository
{
  Future<Either<Failure, String>> getCapsules();
}