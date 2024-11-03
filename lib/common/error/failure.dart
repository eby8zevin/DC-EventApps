import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;
}

@JsonSerializable(createToJson: false)
class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromJson(Map<String, dynamic> json) =>
    _$ServerFailureFromJson(json);

  @override
  List<Object?> get props => [message];
}