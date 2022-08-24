import 'package:qoutes_app/features/random_qoute/data/models/quote_model.dart';

abstract class RandomQouteLocalDataSource {
  Future<QuoteModel> getRandomeQuote();
  Future<void> cacheQoute(QuoteModel qoute);
}
