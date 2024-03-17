// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'originating_lead_source')
  String get originatingLeadSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'quote_id')
  String get quoteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owning_business_unit')
  String get owningBusinessUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_id')
  String get leadId => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'capturing_user')
  String get capturingUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_bracket')
  String get ageBracket => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_patient_cover_limit')
  String get inPatientCoverLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'spouse_covered')
  String get spouseCovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'how_many_children')
  int get howManyChildren => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_children')
  String get coverChildren => throw _privateConstructorUsedError;
  @JsonKey(name: 'spouse_age_bracket')
  String get spouseAgeBracket => throw _privateConstructorUsedError;
  @JsonKey(name: 'benefits')
  List<String> get benefits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String middleName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'originating_lead_source') String originatingLeadSource,
      @JsonKey(name: 'quote_id') String quoteId,
      @JsonKey(name: 'owning_business_unit') String owningBusinessUnit,
      @JsonKey(name: 'lead_id') String leadId,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'capturing_user') String capturingUser,
      @JsonKey(name: 'age_bracket') String ageBracket,
      @JsonKey(name: 'in_patient_cover_limit') String inPatientCoverLimit,
      @JsonKey(name: 'spouse_covered') String spouseCovered,
      @JsonKey(name: 'how_many_children') int howManyChildren,
      @JsonKey(name: 'cover_children') String coverChildren,
      @JsonKey(name: 'spouse_age_bracket') String spouseAgeBracket,
      @JsonKey(name: 'benefits') List<String> benefits});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? originatingLeadSource = null,
    Object? quoteId = null,
    Object? owningBusinessUnit = null,
    Object? leadId = null,
    Object? source = null,
    Object? capturingUser = null,
    Object? ageBracket = null,
    Object? inPatientCoverLimit = null,
    Object? spouseCovered = null,
    Object? howManyChildren = null,
    Object? coverChildren = null,
    Object? spouseAgeBracket = null,
    Object? benefits = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      originatingLeadSource: null == originatingLeadSource
          ? _value.originatingLeadSource
          : originatingLeadSource // ignore: cast_nullable_to_non_nullable
              as String,
      quoteId: null == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String,
      owningBusinessUnit: null == owningBusinessUnit
          ? _value.owningBusinessUnit
          : owningBusinessUnit // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      capturingUser: null == capturingUser
          ? _value.capturingUser
          : capturingUser // ignore: cast_nullable_to_non_nullable
              as String,
      ageBracket: null == ageBracket
          ? _value.ageBracket
          : ageBracket // ignore: cast_nullable_to_non_nullable
              as String,
      inPatientCoverLimit: null == inPatientCoverLimit
          ? _value.inPatientCoverLimit
          : inPatientCoverLimit // ignore: cast_nullable_to_non_nullable
              as String,
      spouseCovered: null == spouseCovered
          ? _value.spouseCovered
          : spouseCovered // ignore: cast_nullable_to_non_nullable
              as String,
      howManyChildren: null == howManyChildren
          ? _value.howManyChildren
          : howManyChildren // ignore: cast_nullable_to_non_nullable
              as int,
      coverChildren: null == coverChildren
          ? _value.coverChildren
          : coverChildren // ignore: cast_nullable_to_non_nullable
              as String,
      spouseAgeBracket: null == spouseAgeBracket
          ? _value.spouseAgeBracket
          : spouseAgeBracket // ignore: cast_nullable_to_non_nullable
              as String,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String middleName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'originating_lead_source') String originatingLeadSource,
      @JsonKey(name: 'quote_id') String quoteId,
      @JsonKey(name: 'owning_business_unit') String owningBusinessUnit,
      @JsonKey(name: 'lead_id') String leadId,
      @JsonKey(name: 'source') String source,
      @JsonKey(name: 'capturing_user') String capturingUser,
      @JsonKey(name: 'age_bracket') String ageBracket,
      @JsonKey(name: 'in_patient_cover_limit') String inPatientCoverLimit,
      @JsonKey(name: 'spouse_covered') String spouseCovered,
      @JsonKey(name: 'how_many_children') int howManyChildren,
      @JsonKey(name: 'cover_children') String coverChildren,
      @JsonKey(name: 'spouse_age_bracket') String spouseAgeBracket,
      @JsonKey(name: 'benefits') List<String> benefits});
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? originatingLeadSource = null,
    Object? quoteId = null,
    Object? owningBusinessUnit = null,
    Object? leadId = null,
    Object? source = null,
    Object? capturingUser = null,
    Object? ageBracket = null,
    Object? inPatientCoverLimit = null,
    Object? spouseCovered = null,
    Object? howManyChildren = null,
    Object? coverChildren = null,
    Object? spouseAgeBracket = null,
    Object? benefits = null,
  }) {
    return _then(_$QuoteImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      originatingLeadSource: null == originatingLeadSource
          ? _value.originatingLeadSource
          : originatingLeadSource // ignore: cast_nullable_to_non_nullable
              as String,
      quoteId: null == quoteId
          ? _value.quoteId
          : quoteId // ignore: cast_nullable_to_non_nullable
              as String,
      owningBusinessUnit: null == owningBusinessUnit
          ? _value.owningBusinessUnit
          : owningBusinessUnit // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      capturingUser: null == capturingUser
          ? _value.capturingUser
          : capturingUser // ignore: cast_nullable_to_non_nullable
              as String,
      ageBracket: null == ageBracket
          ? _value.ageBracket
          : ageBracket // ignore: cast_nullable_to_non_nullable
              as String,
      inPatientCoverLimit: null == inPatientCoverLimit
          ? _value.inPatientCoverLimit
          : inPatientCoverLimit // ignore: cast_nullable_to_non_nullable
              as String,
      spouseCovered: null == spouseCovered
          ? _value.spouseCovered
          : spouseCovered // ignore: cast_nullable_to_non_nullable
              as String,
      howManyChildren: null == howManyChildren
          ? _value.howManyChildren
          : howManyChildren // ignore: cast_nullable_to_non_nullable
              as int,
      coverChildren: null == coverChildren
          ? _value.coverChildren
          : coverChildren // ignore: cast_nullable_to_non_nullable
              as String,
      spouseAgeBracket: null == spouseAgeBracket
          ? _value.spouseAgeBracket
          : spouseAgeBracket // ignore: cast_nullable_to_non_nullable
              as String,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$QuoteImpl implements _Quote {
  const _$QuoteImpl(
      {@JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'middle_name') this.middleName = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      @JsonKey(name: 'originating_lead_source') this.originatingLeadSource = '',
      @JsonKey(name: 'quote_id') this.quoteId = '',
      @JsonKey(name: 'owning_business_unit') this.owningBusinessUnit = '',
      @JsonKey(name: 'lead_id') this.leadId = '',
      @JsonKey(name: 'source') this.source = '',
      @JsonKey(name: 'capturing_user') this.capturingUser = '',
      @JsonKey(name: 'age_bracket') this.ageBracket = '',
      @JsonKey(name: 'in_patient_cover_limit') this.inPatientCoverLimit = '',
      @JsonKey(name: 'spouse_covered') this.spouseCovered = '',
      @JsonKey(name: 'how_many_children') this.howManyChildren = 0,
      @JsonKey(name: 'cover_children') this.coverChildren = '',
      @JsonKey(name: 'spouse_age_bracket') this.spouseAgeBracket = '',
      @JsonKey(name: 'benefits')
      final List<String> benefits = const <String>[]})
      : _benefits = benefits;

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String middleName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'originating_lead_source')
  final String originatingLeadSource;
  @override
  @JsonKey(name: 'quote_id')
  final String quoteId;
  @override
  @JsonKey(name: 'owning_business_unit')
  final String owningBusinessUnit;
  @override
  @JsonKey(name: 'lead_id')
  final String leadId;
  @override
  @JsonKey(name: 'source')
  final String source;
  @override
  @JsonKey(name: 'capturing_user')
  final String capturingUser;
  @override
  @JsonKey(name: 'age_bracket')
  final String ageBracket;
  @override
  @JsonKey(name: 'in_patient_cover_limit')
  final String inPatientCoverLimit;
  @override
  @JsonKey(name: 'spouse_covered')
  final String spouseCovered;
  @override
  @JsonKey(name: 'how_many_children')
  final int howManyChildren;
  @override
  @JsonKey(name: 'cover_children')
  final String coverChildren;
  @override
  @JsonKey(name: 'spouse_age_bracket')
  final String spouseAgeBracket;
  final List<String> _benefits;
  @override
  @JsonKey(name: 'benefits')
  List<String> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  String toString() {
    return 'Quote(firstName: $firstName, middleName: $middleName, lastName: $lastName, originatingLeadSource: $originatingLeadSource, quoteId: $quoteId, owningBusinessUnit: $owningBusinessUnit, leadId: $leadId, source: $source, capturingUser: $capturingUser, ageBracket: $ageBracket, inPatientCoverLimit: $inPatientCoverLimit, spouseCovered: $spouseCovered, howManyChildren: $howManyChildren, coverChildren: $coverChildren, spouseAgeBracket: $spouseAgeBracket, benefits: $benefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.originatingLeadSource, originatingLeadSource) ||
                other.originatingLeadSource == originatingLeadSource) &&
            (identical(other.quoteId, quoteId) || other.quoteId == quoteId) &&
            (identical(other.owningBusinessUnit, owningBusinessUnit) ||
                other.owningBusinessUnit == owningBusinessUnit) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.capturingUser, capturingUser) ||
                other.capturingUser == capturingUser) &&
            (identical(other.ageBracket, ageBracket) ||
                other.ageBracket == ageBracket) &&
            (identical(other.inPatientCoverLimit, inPatientCoverLimit) ||
                other.inPatientCoverLimit == inPatientCoverLimit) &&
            (identical(other.spouseCovered, spouseCovered) ||
                other.spouseCovered == spouseCovered) &&
            (identical(other.howManyChildren, howManyChildren) ||
                other.howManyChildren == howManyChildren) &&
            (identical(other.coverChildren, coverChildren) ||
                other.coverChildren == coverChildren) &&
            (identical(other.spouseAgeBracket, spouseAgeBracket) ||
                other.spouseAgeBracket == spouseAgeBracket) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      middleName,
      lastName,
      originatingLeadSource,
      quoteId,
      owningBusinessUnit,
      leadId,
      source,
      capturingUser,
      ageBracket,
      inPatientCoverLimit,
      spouseCovered,
      howManyChildren,
      coverChildren,
      spouseAgeBracket,
      const DeepCollectionEquality().hash(_benefits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteImplToJson(
      this,
    );
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {@JsonKey(name: 'first_name') final String firstName,
      @JsonKey(name: 'middle_name') final String middleName,
      @JsonKey(name: 'last_name') final String lastName,
      @JsonKey(name: 'originating_lead_source')
      final String originatingLeadSource,
      @JsonKey(name: 'quote_id') final String quoteId,
      @JsonKey(name: 'owning_business_unit') final String owningBusinessUnit,
      @JsonKey(name: 'lead_id') final String leadId,
      @JsonKey(name: 'source') final String source,
      @JsonKey(name: 'capturing_user') final String capturingUser,
      @JsonKey(name: 'age_bracket') final String ageBracket,
      @JsonKey(name: 'in_patient_cover_limit') final String inPatientCoverLimit,
      @JsonKey(name: 'spouse_covered') final String spouseCovered,
      @JsonKey(name: 'how_many_children') final int howManyChildren,
      @JsonKey(name: 'cover_children') final String coverChildren,
      @JsonKey(name: 'spouse_age_bracket') final String spouseAgeBracket,
      @JsonKey(name: 'benefits') final List<String> benefits}) = _$QuoteImpl;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String get middleName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'originating_lead_source')
  String get originatingLeadSource;
  @override
  @JsonKey(name: 'quote_id')
  String get quoteId;
  @override
  @JsonKey(name: 'owning_business_unit')
  String get owningBusinessUnit;
  @override
  @JsonKey(name: 'lead_id')
  String get leadId;
  @override
  @JsonKey(name: 'source')
  String get source;
  @override
  @JsonKey(name: 'capturing_user')
  String get capturingUser;
  @override
  @JsonKey(name: 'age_bracket')
  String get ageBracket;
  @override
  @JsonKey(name: 'in_patient_cover_limit')
  String get inPatientCoverLimit;
  @override
  @JsonKey(name: 'spouse_covered')
  String get spouseCovered;
  @override
  @JsonKey(name: 'how_many_children')
  int get howManyChildren;
  @override
  @JsonKey(name: 'cover_children')
  String get coverChildren;
  @override
  @JsonKey(name: 'spouse_age_bracket')
  String get spouseAgeBracket;
  @override
  @JsonKey(name: 'benefits')
  List<String> get benefits;
  @override
  @JsonKey(ignore: true)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
