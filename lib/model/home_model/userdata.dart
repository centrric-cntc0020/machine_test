import 'package:freezed_annotation/freezed_annotation.dart';

part 'userdata.freezed.dart';
part 'userdata.g.dart';

@freezed
class Userdata with _$Userdata {
  factory Userdata({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    String? name,
    String? phone,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_id_message') String? deviceIdMessage,
    @JsonKey(name: 'course_id') String? courseId,
    @JsonKey(name: 'is_purchased') bool? isPurchased,
    @JsonKey(name: 'course_name') String? courseName,
    @JsonKey(name: 'batch_name') String? batchName,
    @JsonKey(name: 'batch_id') String? batchId,
    String? image,
    @JsonKey(name: 'query_number') String? queryNumber,
    @JsonKey(name: 'inst_contact_phone') String? instContactPhone,
    @JsonKey(name: 'inst_contact_email') String? instContactEmail,
    @JsonKey(name: 'inst_contact_address') String? instContactAddress,
    @JsonKey(name: 'privacy_policy') String? privacyPolicy,
    @JsonKey(name: 'dynamic_link') String? dynamicLink,
    String? information,
    @JsonKey(name: 'android_version') String? androidVersion,
    @JsonKey(name: 'ios_version') String? iosVersion,
    @JsonKey(name: 'show_switch_course') String? showSwitchCourse,
    @JsonKey(name: 'show_add_live_class') int? showAddLiveClass,
    @JsonKey(name: 'show_exam') String? showExam,
    @JsonKey(name: 'show_practice') String? showPractice,
    @JsonKey(name: 'show_material') String? showMaterial,
    @JsonKey(name: 'show_external_exam') int? showExternalExam,
    @JsonKey(name: 'zoom_id') String? zoomId,
    @JsonKey(name: 'zoom_password') String? zoomPassword,
    @JsonKey(name: 'zoom_api_key') String? zoomApiKey,
    @JsonKey(name: 'zoom_secret_key') String? zoomSecretKey,
    @JsonKey(name: 'zoom_web_domain') String? zoomWebDomain,
  }) = _Userdata;

  factory Userdata.fromJson(Map<String, dynamic> json) =>
      _$UserdataFromJson(json);
}
