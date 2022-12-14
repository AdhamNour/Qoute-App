import 'dart:convert';

import 'package:qoutes_app/features/random_qoute/domain/entities/quote.dart';

class QuoteModel extends Quote {
  const QuoteModel(
      {required String author,
      required int id,
      required String content,
      required String permalink})
      : super(author: author, id: id, content: content, permalink: permalink);
  factory QuoteModel.fromMap(Map<String, dynamic> map) {
    return QuoteModel(
      author: map['author'] as String,
      id: map['id'] as int,
      content: map['quote'] as String,
      permalink: map['permalink'] as String,
    );
  }
  factory QuoteModel.fromJson(String source) =>
      QuoteModel.fromMap(json.decode(source) as Map<String, dynamic>);
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
      'id': id,
      'quote': content,
      'permalink': permalink,
    };
  }

  String toJson() => json.encode(toMap());
}
