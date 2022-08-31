import 'package:dio/dio.dart';
import 'package:qoutes_app/core/API/api_consumer.dart';

class DioConsumer extends APIConsumer {
  final Dio client;

  DioConsumer({required this.client});

  @override
  Future get({required String url, Map<String, dynamic>? params}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post({required String url, Map<String, dynamic>? params}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future put({required String url, Map<String, dynamic>? params}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
