// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowModelImpl _$$ShowModelImplFromJson(Map<String, dynamic> json) =>
    _$ShowModelImpl(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      runtime: json['runtime'] as int?,
      averageRuntime: json['averageRuntime'] as int?,
      premiered: json['premiered'] as String?,
      ended: json['ended'] as String?,
      officialSite: json['officialSite'] as String?,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      weight: json['weight'] as int?,
      network: json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
      externals: json['externals'] == null
          ? null
          : Externals.fromJson(json['externals'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      updated: json['updated'] as int?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShowModelImplToJson(_$ShowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'rating': instance.rating,
      'weight': instance.weight,
      'network': instance.network,
      'externals': instance.externals,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
      '_links': instance.links,
    };
