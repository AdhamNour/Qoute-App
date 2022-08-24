import 'package:qoutes_app/features/random_qoute/data/models/quote_model.dart';

abstract class RandomQouteRemoteDataSource {
  Future<QuoteModel> getRandomeQuote();
}
