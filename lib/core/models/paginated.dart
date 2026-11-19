import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated.freezed.dart';
part 'paginated.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class Paginated<T> with _$Paginated<T> {
  const factory Paginated({
    required List<T> items,
    @JsonKey(name: 'next_cursor') String? nextCursor,
  }) = _Paginated<T>;

  factory Paginated.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedFromJson(json, fromJsonT);
}
