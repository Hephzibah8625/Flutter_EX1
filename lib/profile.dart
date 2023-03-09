import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile({
    required this.name,
    required this.rank,
    required this.phrase,
    required this.imageLink,
  });
  final String name;
  final num rank;
  final String phrase;
  final String imageLink;

  factory Profile.fromJson(Map<String, dynamic> data) =>
      _$ProfileFromJson(data);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
