// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      userId: json['id'] as String? ?? '',
      email: json['email_address'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      userName: json['username'] as String? ?? '',
      avatarUrl: json['avatar_url'] as String? ?? '',
      quotes: (json['quotes'] as List<dynamic>?)
              ?.map((e) => Quote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Quote>[],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'email_address': instance.email,
      'created_at': instance.createdAt,
      'username': instance.userName,
      'avatar_url': instance.avatarUrl,
      'quotes': instance.quotes.map((e) => e.toJson()).toList(),
    };
