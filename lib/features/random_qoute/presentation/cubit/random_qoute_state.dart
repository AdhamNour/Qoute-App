part of 'random_qoute_cubit.dart';

abstract class RandomQuoteState extends Equatable {
  const RandomQuoteState();

  @override
  List<Object> get props => [];
}

class RandomQuoteInitial extends RandomQuoteState {}

class RandomQuoteIsLoading extends RandomQuoteState {}

class RandomQuoteLoaded extends RandomQuoteState {
  final Quote quote;

  const RandomQuoteLoaded({required this.quote});

  @override
  // TODO: implement props
  List<Object> get props => [quote];
}

class RandomQuoteError extends RandomQuoteState {
  final String message;

  RandomQuoteError({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
