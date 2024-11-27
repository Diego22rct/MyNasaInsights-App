import 'package:my_nasa_insights/planetary/domain/apod.dart';

abstract class ApodState {}

class ApodInitial extends ApodState {}

class ApodLoading extends ApodState {}

class ApodLoaded extends ApodState {
  final List<Apod> Apods;
  final bool hasReachedEnd;

  ApodLoaded({required this.Apods, required this.hasReachedEnd});
}

class ApodError extends ApodState {
  final String message;

  ApodError({required this.message});
}
