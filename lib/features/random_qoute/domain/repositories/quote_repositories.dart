import 'package:dartz/dartz.dart';
import 'package:qoutes_app/core/errors/failures.dart';
import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';

abstract class QuoteRepository {
  Future<Either<Failure, Quote>> getRandomQoute();
}

class Qoute {}
