import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead.freezed.dart';

part 'lead.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Lead with _$Lead {
  @JsonSerializable(explicitToJson: true)
  const factory Lead({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'location') @Default('') String location,
    @JsonKey(name: 'lead_created') @Default('') String leadCreated,
    @JsonKey(name: 'last_contacted') @Default('') String lastContacted,
    @JsonKey(name: 'next_appointment') @Default('') String nextAppointment,
    @JsonKey(name: 'lead_source') @Default('') String leadSource,
    @JsonKey(name: 'lead_status') @Default('') String leadStatus,
    @JsonKey(name: 'product_requested') @Default('') String productRequested,
    @JsonKey(name: 'product_sold') @Default('') String productSold,
    @JsonKey(name: 'lead_close_reason') @Default('') String leadCloseReason,
    @JsonKey(name: 'recording_agent') @Default('') String recordingAgent,
}) = _Lead;

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);
}