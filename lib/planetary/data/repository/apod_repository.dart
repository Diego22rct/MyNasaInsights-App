import 'package:my_nasa_insights/core/resource.dart';
import 'package:my_nasa_insights/planetary/data/remote/apod_dto.dart';
import 'package:my_nasa_insights/planetary/data/remote/apod_service.dart';

class ApodRepository {
  Future<Resource<List<ApodDto>>> getApod(
      String initial_date, String final_date) async {
    Resource<List<ApodDto>> resource =
        await ApodService().getApods(initial_date, final_date);
    if (resource is Success) {
      return resource;
    } else {
      return Error(resource.message!);
    }
  }
}
