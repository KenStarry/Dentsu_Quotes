import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote.freezed.dart';

part 'quote.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Quote with _$Quote {
  @JsonSerializable(explicitToJson: true)
  const factory Quote({
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'middle_name') @Default('') String middleName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    @JsonKey(name: 'originating_lead_source')
    @Default('')
    String originatingLeadSource,
    @JsonKey(name: 'quote_id') @Default('') String quoteId,
    @JsonKey(name: 'owning_business_unit')
    @Default('')
    String owningBusinessUnit,
    @JsonKey(name: 'lead_id') @Default('') String leadId,
    @JsonKey(name: 'source') @Default('') String source,
    @JsonKey(name: 'capturing_user') @Default('') String capturingUser,
    @JsonKey(name: 'age_bracket') @Default('') String ageBracket,
    @JsonKey(name: 'in_patient_cover_limit')
    @Default('')
    String inPatientCoverLimit,
    @JsonKey(name: 'spouse_covered') @Default('') String spouseCovered,
    @JsonKey(name: 'how_many_children') @Default(0) int howManyChildren,
    @JsonKey(name: 'cover_children') @Default('') String coverChildren,
    @JsonKey(name: 'spouse_age_bracket') @Default('') String spouseAgeBracket,
    @JsonKey(name: 'benefits') @Default(<String>[]) List<String> benefits,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}
