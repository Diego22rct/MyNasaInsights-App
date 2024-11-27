abstract class ApodEvent {}

class GetApodsEvent extends ApodEvent {
  final String start_date;
  final String end_date;

  GetApodsEvent({required this.start_date, required this.end_date});
}
