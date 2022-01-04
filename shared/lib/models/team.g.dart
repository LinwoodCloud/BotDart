// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      json['name'] as String,
      description: json['description'] as String? ?? '',
      members: (json['members'] as List<dynamic>?)
              ?.map((e) => TeamMember.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'members': instance.members,
    };

_$_TeamMember _$$_TeamMemberFromJson(Map<String, dynamic> json) =>
    _$_TeamMember(
      json['guildId'] as String,
      $enumDecodeNullable(_$TeamMemberRoleEnumMap, json['role']) ??
          TeamMemberRole.member,
    );

Map<String, dynamic> _$$_TeamMemberToJson(_$_TeamMember instance) =>
    <String, dynamic>{
      'guildId': instance.guildId,
      'role': _$TeamMemberRoleEnumMap[instance.role],
    };

const _$TeamMemberRoleEnumMap = {
  TeamMemberRole.admin: 'admin',
  TeamMemberRole.moderator: 'moderator',
  TeamMemberRole.member: 'member',
};
