import 'package:qoutes_app/core/Network/network_info.dart';
import 'package:qoutes_app/core/errors/exception.dart';
import 'package:qoutes_app/features/random_qoute/data/datasources/random_qoute_local_data_source.dart';
import 'package:qoutes_app/features/random_qoute/data/datasources/random_quote_remote_data_source.dart';
import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';
import 'package:qoutes_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:qoutes_app/features/random_qoute/domain/repositories/quote_repositories.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final NetworkInfo networkInfo;
  final RandomQouteRemoteDataSource randomQouteRemoteDataSource;
  final RandomQouteLocalDataSource randomQouteLocalDataSource;

  QuoteRepositoryImpl(
      {required this.networkInfo,
      required this.randomQouteRemoteDataSource,
      required this.randomQouteLocalDataSource});
  @override
  Future<Either<Failure, Quote>> getRandomQoute() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRandomQoute =
            await randomQouteRemoteDataSource.getRandomeQuote();
        randomQouteLocalDataSource.cacheQoute(remoteRandomQoute);
        return Right(remoteRandomQoute);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localRandomQoute =
            await randomQouteLocalDataSource.getRandomeQuote();
        return Right(localRandomQoute);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
