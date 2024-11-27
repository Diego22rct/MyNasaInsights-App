import 'dart:math';

import 'package:my_nasa_insights/core/resource.dart';
import 'package:my_nasa_insights/planetary/data/remote/apod_dto.dart';
import 'package:my_nasa_insights/planetary/data/remote/apod_service.dart';
import 'package:my_nasa_insights/planetary/domain/apod.dart';

class ApodRepository {
  Future<Resource<List<Apod>>> getApod(
      String initial_date, String final_date) async {
    Resource<List<ApodDto>> resource =
        await ApodService().getApods(initial_date, final_date);
    if (resource is Success) {
      List<Apod> apods = resource.data!
          .map((e) => Apod(
              id: Random().nextInt(1000).toString(),
              title: e.title,
              explanation: e.explanation,
              hdurl: e.hdurl,
              date: e.date,
              copyright: e.copyright))
          .toList();
      return Success(apods);
    } else {
      return Error(resource.message!);
    }
  }
}
