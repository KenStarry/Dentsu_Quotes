// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lead _$LeadFromJson(Map<String, dynamic> json) {
  return _Lead.fromJson(json);
}

/// @nodoc
mixin _$Lead {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_created')
  String get leadCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_contacted')
  String get lastContacted => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_appointment')
  String get nextAppointment => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_source')
  String get leadSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_status')
  String get leadStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_requested')
  String get productRequested => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_sold')
  String get productSold => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_close_reason')
  String get leadCloseReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'recording_agent')
  String get recordingAgent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadCopyWith<Lead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadCopyWith<$Res> {
  factory $LeadCopyWith(Lead value, $Res Function(Lead) then) =
      _$LeadCopyWithImpl<$Res, Lead>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'lead_created') String leadCreated,
      @JsonKey(name: 'last_contacted') String lastContacted,
      @JsonKey(name: 'next_appointment') String nextAppointment,
      @JsonKey(name: 'lead_source') String leadSource,
      @JsonKey(name: 'lead_status') String leadStatus,
      @JsonKey(name: 'product_requested') String productRequested,
      @JsonKey(name: 'product_sold') String productSold,
      @JsonKey(name: 'lead_close_reason') String leadCloseReason,
      @JsonKey(name: 'recording_agent') String recordingAgent});
}

/// @nodoc
class _$LeadCopyWithImpl<$Res, $Val extends Lead>
    implements $LeadCopyWith<$Res> {
  _$LeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? location = null,
    Object? leadCreated = null,
    Object? lastContacted = null,
    Object? nextAppointment = null,
    Object? leadSource = null,
    Object? leadStatus = null,
    Object? productRequested = null,
    Object? productSold = null,
    Object? leadCloseReason = null,
    Object? recordingAgent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      leadCreated: null == leadCreated
          ? _value.leadCreated
          : leadCreated // ignore: cast_nullable_to_non_nullable
              as String,
      lastContacted: null == lastContacted
          ? _value.lastContacted
          : lastContacted // ignore: cast_nullable_to_non_nullable
              as String,
      nextAppointment: null == nextAppointment
          ? _value.nextAppointment
          : nextAppointment // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productRequested: null == productRequested
          ? _value.productRequested
          : productRequested // ignore: cast_nullable_to_non_nullable
              as String,
      productSold: null == productSold
          ? _value.productSold
          : productSold // ignore: cast_nullable_to_non_nullable
              as String,
      leadCloseReason: null == leadCloseReason
          ? _value.leadCloseReason
          : leadCloseReason // ignore: cast_nullable_to_non_nullable
              as String,
      recordingAgent: null == recordingAgent
          ? _value.recordingAgent
          : recordingAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadImplCopyWith<$Res> implements $LeadCopyWith<$Res> {
  factory _$$LeadImplCopyWith(
          _$LeadImpl value, $Res Function(_$LeadImpl) then) =
      __$$LeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'lead_created') String leadCreated,
      @JsonKey(name: 'last_contacted') String lastContacted,
      @JsonKey(name: 'next_appointment') String nextAppointment,
      @JsonKey(name: 'lead_source') String leadSource,
      @JsonKey(name: 'lead_status') String leadStatus,
      @JsonKey(name: 'product_requested') String productRequested,
      @JsonKey(name: 'product_sold') String productSold,
      @JsonKey(name: 'lead_close_reason') String leadCloseReason,
      @JsonKey(name: 'recording_agent') String recordingAgent});
}

/// @nodoc
class __$$LeadImplCopyWithImpl<$Res>
    extends _$LeadCopyWithImpl<$Res, _$LeadImpl>
    implements _$$LeadImplCopyWith<$Res> {
  __$$LeadImplCopyWithImpl(_$LeadImpl _value, $Res Function(_$LeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? location = null,
    Object? leadCreated = null,
    Object? lastContacted = null,
    Object? nextAppointment = null,
    Object? leadSource = null,
    Object? leadStatus = null,
    Object? productRequested = null,
    Object? productSold = null,
    Object? leadCloseReason = null,
    Object? recordingAgent = null,
  }) {
    return _then(_$LeadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      leadCreated: null == leadCreated
          ? _value.leadCreated
          : leadCreated // ignore: cast_nullable_to_non_nullable
              as String,
      lastContacted: null == lastContacted
          ? _value.lastContacted
          : lastContacted // ignore: cast_nullable_to_non_nullable
              as String,
      nextAppointment: null == nextAppointment
          ? _value.nextAppointment
          : nextAppointment // ignore: cast_nullable_to_non_nullable
              as String,
      leadSource: null == leadSource
          ? _value.leadSource
          : leadSource // ignore: cast_nullable_to_non_nullable
              as String,
      leadStatus: null == leadStatus
          ? _value.leadStatus
          : leadStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productRequested: null == productRequested
          ? _value.productRequested
          : productRequested // ignore: cast_nullable_to_non_nullable
              as String,
      productSold: null == productSold
          ? _value.productSold
          : productSold // ignore: cast_nullable_to_non_nullable
              as String,
      leadCloseReason: null == leadCloseReason
          ? _value.leadCloseReason
          : leadCloseReason // ignore: cast_nullable_to_non_nullable
              as String,
      recordingAgent: null == recordingAgent
          ? _value.recordingAgent
          : recordingAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LeadImpl implements _Lead {
  const _$LeadImpl(
      {@JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'full_name') this.fullName = '',
      @JsonKey(name: 'avatar_url') this.avatarUrl = '',
      @JsonKey(name: 'location') this.location = '',
      @JsonKey(name: 'lead_created') this.leadCreated = '',
      @JsonKey(name: 'last_contacted') this.lastContacted = '',
      @JsonKey(name: 'next_appointment') this.nextAppointment = '',
      @JsonKey(name: 'lead_source') this.leadSource = '',
      @JsonKey(name: 'lead_status') this.leadStatus = '',
      @JsonKey(name: 'product_requested') this.productRequested = '',
      @JsonKey(name: 'product_sold') this.productSold = '',
      @JsonKey(name: 'lead_close_reason') this.leadCloseReason = '',
      @JsonKey(name: 'recording_agent') this.recordingAgent = ''});

  factory _$LeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'lead_created')
  final String leadCreated;
  @override
  @JsonKey(name: 'last_contacted')
  final String lastContacted;
  @override
  @JsonKey(name: 'next_appointment')
  final String nextAppointment;
  @override
  @JsonKey(name: 'lead_source')
  final String leadSource;
  @override
  @JsonKey(name: 'lead_status')
  final String leadStatus;
  @override
  @JsonKey(name: 'product_requested')
  final String productRequested;
  @override
  @JsonKey(name: 'product_sold')
  final String productSold;
  @override
  @JsonKey(name: 'lead_close_reason')
  final String leadCloseReason;
  @override
  @JsonKey(name: 'recording_agent')
  final String recordingAgent;

  @override
  String toString() {
    return 'Lead(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, location: $location, leadCreated: $leadCreated, lastContacted: $lastContacted, nextAppointment: $nextAppointment, leadSource: $leadSource, leadStatus: $leadStatus, productRequested: $productRequested, productSold: $productSold, leadCloseReason: $leadCloseReason, recordingAgent: $recordingAgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.leadCreated, leadCreated) ||
                other.leadCreated == leadCreated) &&
            (identical(other.lastContacted, lastContacted) ||
                other.lastContacted == lastContacted) &&
            (identical(other.nextAppointment, nextAppointment) ||
                other.nextAppointment == nextAppointment) &&
            (identical(other.leadSource, leadSource) ||
                other.leadSource == leadSource) &&
            (identical(other.leadStatus, leadStatus) ||
                other.leadStatus == leadStatus) &&
            (identical(other.productRequested, productRequested) ||
                other.productRequested == productRequested) &&
            (identical(other.productSold, productSold) ||
                other.productSold == productSold) &&
            (identical(other.leadCloseReason, leadCloseReason) ||
                other.leadCloseReason == leadCloseReason) &&
            (identical(other.recordingAgent, recordingAgent) ||
                other.recordingAgent == recordingAgent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      avatarUrl,
      location,
      leadCreated,
      lastContacted,
      nextAppointment,
      leadSource,
      leadStatus,
      productRequested,
      productSold,
      leadCloseReason,
      recordingAgent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      __$$LeadImplCopyWithImpl<_$LeadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadImplToJson(
      this,
    );
  }
}

abstract class _Lead implements Lead {
  const factory _Lead(
          {@JsonKey(name: 'id') final String id,
          @JsonKey(name: 'full_name') final String fullName,
          @JsonKey(name: 'avatar_url') final String avatarUrl,
          @JsonKey(name: 'location') final String location,
          @JsonKey(name: 'lead_created') final String leadCreated,
          @JsonKey(name: 'last_contacted') final String lastContacted,
          @JsonKey(name: 'next_appointment') final String nextAppointment,
          @JsonKey(name: 'lead_source') final String leadSource,
          @JsonKey(name: 'lead_status') final String leadStatus,
          @JsonKey(name: 'product_requested') final String productRequested,
          @JsonKey(name: 'product_sold') final String productSold,
          @JsonKey(name: 'lead_close_reason') final String leadCloseReason,
          @JsonKey(name: 'recording_agent') final String recordingAgent}) =
      _$LeadImpl;

  factory _Lead.fromJson(Map<String, dynamic> json) = _$LeadImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'lead_created')
  String get leadCreated;
  @override
  @JsonKey(name: 'last_contacted')
  String get lastContacted;
  @override
  @JsonKey(name: 'next_appointment')
  String get nextAppointment;
  @override
  @JsonKey(name: 'lead_source')
  String get leadSource;
  @override
  @JsonKey(name: 'lead_status')
  String get leadStatus;
  @override
  @JsonKey(name: 'product_requested')
  String get productRequested;
  @override
  @JsonKey(name: 'product_sold')
  String get productSold;
  @override
  @JsonKey(name: 'lead_close_reason')
  String get leadCloseReason;
  @override
  @JsonKey(name: 'recording_agent')
  String get recordingAgent;
  @override
  @JsonKey(ignore: true)
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
