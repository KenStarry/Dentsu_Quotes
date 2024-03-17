import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';

part 'my_user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MyUser with _$MyUser {
  @JsonSerializable(explicitToJson: true)
  const factory MyUser({
    @JsonKey(name: 'id') @Default('') String userId,
    @JsonKey(name: 'email_address') @Default('') String email,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'username') @Default('') String userName,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'quotes') @Default(<Quote>[]) List<Quote> quotes,
  }) = _MyUser;

  factory MyUser.fromJson(Map<String, dynamic> json) => _$MyUserFromJson(json);
}
