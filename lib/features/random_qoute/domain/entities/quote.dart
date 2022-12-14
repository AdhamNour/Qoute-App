// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final String author;
  final int id;
  final String content;
  final String permalink;
  const Quote({
    required this.author,
    required this.id,
    required this.content,
    required this.permalink,
  });

  Quote copyWith({
    String? author,
    int? id,
    String? content,
    String? permalink,
  }) {
    return Quote(
      author: author ?? this.author,
      id: id ?? this.id,
      content: content ?? this.content,
      permalink: permalink ?? this.permalink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
      'id': id,
      'quote': content,
      'permalink': permalink,
    };
  }

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(
      author: map['author'] as String,
      id: map['id'] as int,
      content: map['quote'] as String,
      permalink: map['permalink'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quote.fromJson(String source) =>
      Quote.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [author, id, content, permalink];
}
