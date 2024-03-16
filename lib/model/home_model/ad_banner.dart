import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_banner.freezed.dart';
part 'ad_banner.g.dart';

@freezed
class AdBanner with _$AdBanner {
  factory AdBanner({
    String? id,
    String? image,
    String? link,
  }) = _AdBanner;

  factory AdBanner.fromJson(Map<String, dynamic> json) =>
      _$AdBannerFromJson(json);
}
