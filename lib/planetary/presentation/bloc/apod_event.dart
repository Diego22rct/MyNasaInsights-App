abstract class ApodEvent {}

class GetApodsEvent extends ApodEvent {
  final String endpoint;
  final int page;

  GetApodsEvent({required this.endpoint, required this.page});
}
