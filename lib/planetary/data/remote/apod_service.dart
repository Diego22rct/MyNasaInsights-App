import 'dart:convert';

import 'package:my_nasa_insights/core/app_constants.dart';
import 'package:my_nasa_insights/core/resource.dart';
import 'package:my_nasa_insights/planetary/data/remote/apod_dto.dart';
import 'package:http/http.dart' as http;

class ApodService {
  Future<Resource<List<ApodDto>>> getApods(
      String initial_date, String final_date) async {
    String url =
        '${AppConstants.baseURL}${AppConstants.apod}?api_key=${AppConstants.apiKey}&start_date=$initial_date&end_date=$final_date';
    try {
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        List<ApodDto> apods =
            body.map((dynamic item) => ApodDto.fromJson(item)).toList();
        return Success(apods);
      } else {
        return Error('Error: ${response.reasonPhrase}');
      }
    } catch (error) {
      return Error('Error: ${error.toString()}');
    }
  }
}
