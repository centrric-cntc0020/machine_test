// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'externals.dart';
import 'image.dart';
import 'links.dart';
import 'network.dart';
import 'rating.dart';
import 'schedule.dart';

part 'show_model.freezed.dart';
part 'show_model.g.dart';

@freezed
class ShowModel with _$ShowModel {
  factory ShowModel({
    int? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    int? runtime,
    int? averageRuntime,
    String? premiered,
    String? ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    int? weight,
    Network? network,
    // dynamic webChannel,
    // dynamic dvdCountry,
    Externals? externals,
    Image? image,
    String? summary,
    int? updated,
    @JsonKey(name: '_links') Links? links,
  }) = _ShowModel;

  factory ShowModel.fromJson(Map<String, dynamic> json) =>
      _$ShowModelFromJson(json);
}
