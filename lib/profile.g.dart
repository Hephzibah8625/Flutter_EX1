// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      name: json['name'] as String,
      rank: json['rank'] as num,
      phrase: json['phrase'] as String,
      imageLink: json['imageLink'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'name': instance.name,
      'rank': instance.rank,
      'phrase': instance.phrase,
      'imageLink': instance.imageLink,
    };
