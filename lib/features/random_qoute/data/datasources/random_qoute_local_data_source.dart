import 'package:qoutes_app/core/errors/exception.dart';
import 'package:qoutes_app/core/utils/app_strings.dart';
import 'package:qoutes_app/features/random_qoute/data/models/quote_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class RandomQouteLocalDataSource {
  Future<QuoteModel> getRandomeQuote();
  Future<void> cacheQoute(QuoteModel qoute);
}

class RandomQouteLocalDataSourceImpl extends RandomQouteLocalDataSource {
  final SharedPreferences sharedPreferences;

  RandomQouteLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<void> cacheQoute(QuoteModel qoute) {
    // TODO: implement cacheQoute
    throw UnimplementedError();
  }

  @override
  Future<QuoteModel> getRandomeQuote() async {
    final jsonString =
        sharedPreferences.getString(AppStrings.cachedRandomQoute);
    if (jsonString == null) {
      throw CacheException();
    } else {
      return QuoteModel.fromJson(jsonString);
    }
  }
}
