import 'package:equatable/equatable.dart';
import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';
import 'package:bloc/bloc.dart';

part 'random_qoute_state.dart';

class RandomQuoteCubit extends Cubit<RandomQuoteState> {
  RandomQuoteCubit() : super(RandomQuoteInitial());
}
