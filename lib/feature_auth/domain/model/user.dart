import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    @JsonKey(name: 'id') @Default('') String userId,
    @JsonKey(name: 'email_address') @Default('') String email,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'username') @Default('') String userName,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'quotes') @Default(<Quote>[]) List<Quote> quotes,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
