// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadImpl _$$LeadImplFromJson(Map<String, dynamic> json) => _$LeadImpl(
      id: json['id'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      avatarUrl: json['avatar_url'] as String? ?? '',
      location: json['location'] as String? ?? '',
      leadCreated: json['lead_created'] as String? ?? '',
      lastContacted: json['last_contacted'] as String? ?? '',
      nextAppointment: json['next_appointment'] as String? ?? '',
      leadSource: json['lead_source'] as String? ?? '',
      leadStatus: json['lead_status'] as String? ?? '',
      productRequested: json['product_requested'] as String? ?? '',
      productSold: json['product_sold'] as String? ?? '',
      leadCloseReason: json['lead_close_reason'] as String? ?? '',
      recordingAgent: json['recording_agent'] as String? ?? '',
    );

Map<String, dynamic> _$$LeadImplToJson(_$LeadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'avatar_url': instance.avatarUrl,
      'location': instance.location,
      'lead_created': instance.leadCreated,
      'last_contacted': instance.lastContacted,
      'next_appointment': instance.nextAppointment,
      'lead_source': instance.leadSource,
      'lead_status': instance.leadStatus,
      'product_requested': instance.productRequested,
      'product_sold': instance.productSold,
      'lead_close_reason': instance.leadCloseReason,
      'recording_agent': instance.recordingAgent,
    };
