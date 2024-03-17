// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      firstName: json['first_name'] as String? ?? '',
      middleName: json['middle_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      originatingLeadSource: json['originating_lead_source'] as String? ?? '',
      quoteId: json['quote_id'] as String? ?? '',
      owningBusinessUnit: json['owning_business_unit'] as String? ?? '',
      leadId: json['lead_id'] as String? ?? '',
      source: json['source'] as String? ?? '',
      capturingUser: json['capturing_user'] as String? ?? '',
      ageBracket: json['age_bracket'] as String? ?? '',
      inPatientCoverLimit: json['in_patient_cover_limit'] as String? ?? '',
      spouseCovered: json['spouse_covered'] as bool? ?? false,
      howManyChildren: json['how_many_children'] as int? ?? 0,
      coverChildren: json['cover_children'] as String? ?? '',
      spouseAgeBracket: json['spouse_age_bracket'] as String? ?? '',
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'originating_lead_source': instance.originatingLeadSource,
      'quote_id': instance.quoteId,
      'owning_business_unit': instance.owningBusinessUnit,
      'lead_id': instance.leadId,
      'source': instance.source,
      'capturing_user': instance.capturingUser,
      'age_bracket': instance.ageBracket,
      'in_patient_cover_limit': instance.inPatientCoverLimit,
      'spouse_covered': instance.spouseCovered,
      'how_many_children': instance.howManyChildren,
      'cover_children': instance.coverChildren,
      'spouse_age_bracket': instance.spouseAgeBracket,
      'benefits': instance.benefits,
    };
