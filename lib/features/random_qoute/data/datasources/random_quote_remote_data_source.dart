import 'package:qoutes_app/core/errors/exception.dart';
import 'package:qoutes_app/core/utils/app_strings.dart';
import 'package:qoutes_app/features/random_qoute/data/models/quote_model.dart';
import 'package:http/http.dart' as http;

abstract class RandomQouteRemoteDataSource {
  Future<QuoteModel> getRandomeQuote();
}

class RandomQouteRemoteDataSourceImpl extends RandomQouteRemoteDataSource {
  final http.Client client;

  RandomQouteRemoteDataSourceImpl({required this.client});
  @override
  Future<QuoteModel> getRandomeQuote() async {
    final randomQouteUri = Uri.parse(AppStrings.url);
    final reponse = await client
        .get(randomQouteUri, headers: {'Content-Type': 'application/json'});
    if (reponse.statusCode == 200) {
      return QuoteModel.fromJson(reponse.body);
    } else {
      throw ServerException();
    }
  }
}
