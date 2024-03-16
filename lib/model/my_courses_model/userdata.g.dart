// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserdataImpl _$$UserdataImplFromJson(Map<String, dynamic> json) =>
    _$UserdataImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      deviceId: json['device_id'] as String?,
      deviceIdMessage: json['device_id_message'] as String?,
      courseId: json['course_id'] as String?,
      isPurchased: json['is_purchased'] as bool?,
      courseName: json['course_name'] as String?,
      batchName: json['batch_name'] as String?,
      batchId: json['batch_id'] as String?,
      image: json['image'] as String?,
      queryNumber: json['query_number'] as String?,
      instContactPhone: json['inst_contact_phone'] as String?,
      instContactEmail: json['inst_contact_email'] as String?,
      instContactAddress: json['inst_contact_address'] as String?,
      privacyPolicy: json['privacy_policy'] as String?,
      dynamicLink: json['dynamic_link'] as String?,
      information: json['information'] as String?,
      androidVersion: json['android_version'] as String?,
      iosVersion: json['ios_version'] as String?,
      showSwitchCourse: json['show_switch_course'] as String?,
      showAddLiveClass: json['show_add_live_class'] as int?,
      showExam: json['show_exam'] as String?,
      showPractice: json['show_practice'] as String?,
      showMaterial: json['show_material'] as String?,
      showExternalExam: json['show_external_exam'] as int?,
      zoomId: json['zoom_id'] as String?,
      zoomPassword: json['zoom_password'] as String?,
      zoomApiKey: json['zoom_api_key'] as String?,
      zoomSecretKey: json['zoom_secret_key'] as String?,
      zoomWebDomain: json['zoom_web_domain'] as String?,
    );

Map<String, dynamic> _$$UserdataImplToJson(_$UserdataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'phone': instance.phone,
      'device_id': instance.deviceId,
      'device_id_message': instance.deviceIdMessage,
      'course_id': instance.courseId,
      'is_purchased': instance.isPurchased,
      'course_name': instance.courseName,
      'batch_name': instance.batchName,
      'batch_id': instance.batchId,
      'image': instance.image,
      'query_number': instance.queryNumber,
      'inst_contact_phone': instance.instContactPhone,
      'inst_contact_email': instance.instContactEmail,
      'inst_contact_address': instance.instContactAddress,
      'privacy_policy': instance.privacyPolicy,
      'dynamic_link': instance.dynamicLink,
      'information': instance.information,
      'android_version': instance.androidVersion,
      'ios_version': instance.iosVersion,
      'show_switch_course': instance.showSwitchCourse,
      'show_add_live_class': instance.showAddLiveClass,
      'show_exam': instance.showExam,
      'show_practice': instance.showPractice,
      'show_material': instance.showMaterial,
      'show_external_exam': instance.showExternalExam,
      'zoom_id': instance.zoomId,
      'zoom_password': instance.zoomPassword,
      'zoom_api_key': instance.zoomApiKey,
      'zoom_secret_key': instance.zoomSecretKey,
      'zoom_web_domain': instance.zoomWebDomain,
    };
