import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';

class QuoteModel extends Quote {
  const QuoteModel(
      {required String author,
      required int id,
      required String content,
      required String permalLink})
      : super(author: author, id: id, content: content, permalLink: permalLink);
}
