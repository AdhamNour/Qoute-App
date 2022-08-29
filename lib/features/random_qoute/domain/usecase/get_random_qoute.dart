import 'package:dartz/dartz.dart';
import 'package:qoutes_app/core/errors/failures.dart';
import 'package:qoutes_app/core/usecases/usecase.dart';
import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';
import 'package:qoutes_app/features/random_qoute/domain/repositories/quote_repositories.dart';

class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});
  @override
  Future<Either<Failure, Quote>> call(NoParams params) {
    return quoteRepository.getRandomQoute();
  }
}
