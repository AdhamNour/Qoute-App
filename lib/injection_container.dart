import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:qoutes_app/core/Network/network_info.dart';
import 'package:qoutes_app/features/random_qoute/data/datasources/random_quote_remote_data_source.dart';
import 'package:qoutes_app/features/random_qoute/data/repositories/quote_repository_impl.dart';
import 'package:qoutes_app/features/random_qoute/domain/repositories/quote_repositories.dart';
import 'package:qoutes_app/features/random_qoute/domain/usecase/get_random_qoute.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/random_qoute/data/datasources/random_qoute_local_data_source.dart';
import 'features/random_qoute/presentation/cubit/random_qoute_cubit.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //!features
  //Blocs
  sl.registerFactory(() => RandomQuoteCubit(getRandomQuoteUsecase: sl()));
  //usecases
  sl.registerLazySingleton(() => GetRandomQuote(quoteRepository: sl()));
  //repos
  sl.registerLazySingleton<QuoteRepository>(() => QuoteRepositoryImpl(
      networkInfo: sl(),
      randomQouteRemoteDataSource: sl(),
      randomQouteLocalDataSource: sl()));

  //Datasources
  sl.registerLazySingleton<RandomQouteRemoteDataSource>(
      () => RandomQouteRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<RandomQouteLocalDataSource>(
      () => RandomQouteLocalDataSourceImpl(sharedPreferences: sl()));
  //!core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: sl()));
  //!External
  final sharedPrefrence = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPrefrence);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
