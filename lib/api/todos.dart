import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response);
}
