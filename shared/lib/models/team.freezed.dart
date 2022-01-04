// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

  _Team call(String name,
      {String description = '', List<TeamMember> members = const []}) {
    return _Team(
      name,
      description: description,
      members: members,
    );
  }

  Team fromJson(Map<String, Object?> json) {
    return Team.fromJson(json);
  }
}

/// @nodoc
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TeamMember> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call({String name, String description, List<TeamMember> members});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>,
    ));
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, List<TeamMember> members});
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? members = freezed,
  }) {
    return _then(_Team(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  const _$_Team(this.name, {this.description = '', this.members = const []});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final String name;
  @JsonKey()
  @override
  final String description;
  @JsonKey()
  @override
  final List<TeamMember> members;

  @override
  String toString() {
    return 'Team(name: $name, description: $description, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Team &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(this);
  }
}

abstract class _Team implements Team {
  const factory _Team(String name,
      {String description, List<TeamMember> members}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  List<TeamMember> get members;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith => throw _privateConstructorUsedError;
}

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return _TeamMember.fromJson(json);
}

/// @nodoc
class _$TeamMemberTearOff {
  const _$TeamMemberTearOff();

  _TeamMember call(String guildId,
      [TeamMemberRole role = TeamMemberRole.member]) {
    return _TeamMember(
      guildId,
      role,
    );
  }

  TeamMember fromJson(Map<String, Object?> json) {
    return TeamMember.fromJson(json);
  }
}

/// @nodoc
const $TeamMember = _$TeamMemberTearOff();

/// @nodoc
mixin _$TeamMember {
  String get guildId => throw _privateConstructorUsedError;
  TeamMemberRole get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res>;
  $Res call({String guildId, TeamMemberRole role});
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res> implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  final TeamMember _value;
  // ignore: unused_field
  final $Res Function(TeamMember) _then;

  @override
  $Res call({
    Object? guildId = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      guildId: guildId == freezed
          ? _value.guildId
          : guildId // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as TeamMemberRole,
    ));
  }
}

/// @nodoc
abstract class _$TeamMemberCopyWith<$Res> implements $TeamMemberCopyWith<$Res> {
  factory _$TeamMemberCopyWith(
          _TeamMember value, $Res Function(_TeamMember) then) =
      __$TeamMemberCopyWithImpl<$Res>;
  @override
  $Res call({String guildId, TeamMemberRole role});
}

/// @nodoc
class __$TeamMemberCopyWithImpl<$Res> extends _$TeamMemberCopyWithImpl<$Res>
    implements _$TeamMemberCopyWith<$Res> {
  __$TeamMemberCopyWithImpl(
      _TeamMember _value, $Res Function(_TeamMember) _then)
      : super(_value, (v) => _then(v as _TeamMember));

  @override
  _TeamMember get _value => super._value as _TeamMember;

  @override
  $Res call({
    Object? guildId = freezed,
    Object? role = freezed,
  }) {
    return _then(_TeamMember(
      guildId == freezed
          ? _value.guildId
          : guildId // ignore: cast_nullable_to_non_nullable
              as String,
      role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as TeamMemberRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamMember implements _TeamMember {
  const _$_TeamMember(this.guildId, [this.role = TeamMemberRole.member]);

  factory _$_TeamMember.fromJson(Map<String, dynamic> json) =>
      _$$_TeamMemberFromJson(json);

  @override
  final String guildId;
  @JsonKey()
  @override
  final TeamMemberRole role;

  @override
  String toString() {
    return 'TeamMember(guildId: $guildId, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamMember &&
            const DeepCollectionEquality().equals(other.guildId, guildId) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(guildId),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$TeamMemberCopyWith<_TeamMember> get copyWith =>
      __$TeamMemberCopyWithImpl<_TeamMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamMemberToJson(this);
  }
}

abstract class _TeamMember implements TeamMember {
  const factory _TeamMember(String guildId, [TeamMemberRole role]) =
      _$_TeamMember;

  factory _TeamMember.fromJson(Map<String, dynamic> json) =
      _$_TeamMember.fromJson;

  @override
  String get guildId;
  @override
  TeamMemberRole get role;
  @override
  @JsonKey(ignore: true)
  _$TeamMemberCopyWith<_TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}
