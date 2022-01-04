import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  const factory Team(String name, {@Default('') String description, @Default([]) List<TeamMember> members}) = _Team;
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

}

@freezed
class TeamMember with _$TeamMember {
  const factory TeamMember(String guildId, [@Default(TeamMemberRole.member) TeamMemberRole role]) = _TeamMember;
  factory TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);

}


enum TeamMemberRole {
  admin,
  moderator,
  member,
}

extension TeamMemberRoleExtension on TeamMemberRole {
  String get emoji {
    switch (this) {
      case TeamMemberRole.admin:
        return '🌟';
      case TeamMemberRole.moderator:
        return '🔧';
      case TeamMemberRole.member:
        return '👤';
    }
  }
}
