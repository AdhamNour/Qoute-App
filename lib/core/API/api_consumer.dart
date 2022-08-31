abstract class APIConsumer {
  Future<dynamic> get({required String url, Map<String, dynamic> params});
  Future<dynamic> post({required String url, Map<String, dynamic> params});
  Future<dynamic> put({required String url, Map<String, dynamic> params});
}
