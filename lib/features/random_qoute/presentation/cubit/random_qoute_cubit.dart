import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:qoutes_app/core/errors/failures.dart';
import 'package:qoutes_app/core/usecases/usecase.dart';
import 'package:qoutes_app/core/utils/app_strings.dart';

import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';
import 'package:qoutes_app/features/random_qoute/domain/usecase/get_random_qoute.dart';

part 'random_qoute_state.dart';

class RandomQuoteCubit extends Cubit<RandomQuoteState> {
  final GetRandomQuote getRandomQuoteUsecase;
  RandomQuoteCubit({required this.getRandomQuoteUsecase})
      : super(RandomQuoteInitial());

  Future<void> getRandomQuote() async {
    final response = await getRandomQuoteUsecase(NoParams());
    emit(response.fold(
        (failure) => RandomQuoteError(message: mapFailuretoMsg(failure)),
        (qoute) => RandomQuoteLoaded(quote: qoute)));
  }

  String mapFailuretoMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;
      case CacheFailure:
        return AppStrings.cacheFailure;
      default:
        return AppStrings.EMPTY;
    }
  }
}
