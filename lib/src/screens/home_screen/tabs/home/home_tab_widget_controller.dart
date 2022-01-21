import 'package:dio/dio.dart';
import 'package:ifood_clone/src/core/model/dish.dart';

class HomeTabWidgetController {
  // replace by dependency injection
  final Dio _dio = Dio();

  final _endpointDishes = const String.fromEnvironment("endpointDishes",
      defaultValue: "http://localhost:3000/dishes");

  Future<List<Dish>> getDishesList() async {
    try {
      final Response<List<dynamic>> response = await _dio.get<List<dynamic>>(
          _endpointDishes,
          options: Options(contentType: Headers.jsonContentType));

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data ?? [];

        return data.map((dish) => Dish.fromJson(dish)).toList();
      } else {
        return [];
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    } catch (e) {
      rethrow;
    }
  }
}
