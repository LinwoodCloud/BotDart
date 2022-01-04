import 'package:postgres/postgres.dart';

import '../models/team.dart';

class TeamService {
  final PostgreSQLConnection connection;

  TeamService(this.connection);

  Future<void> setup() async {
    await connection.execute(
        'CREATE TABLE IF NOT EXISTS teams (name VARCHAR(50) PRIMARY KEY, description TEXT DEFAULT "")');
    await connection.execute(
        'CREATE TABLE IF NOT EXISTS team_members (team_name VARCHAR(50), user_id VARCHAR(50), role VARCHAR(50), PRIMARY KEY (team_name, user_id))');
  }

  // Returns null when the team already exists
  Future<Team?> createTeam(String name, String ownerId) async {
    final result = await connection.query('SELECT * FROM teams WHERE name = @name',
        substitutionValues: {'name': name});
    if (result.length > 0) {
      return null;
    }

    await connection.query(
        'INSERT INTO teams (name, description) VALUES (@name, "")',
        substitutionValues: {'name': name});
    await connection.query(
        'INSERT INTO team_members (team_name, user_id, role) VALUES (@name, @ownerId, "owner")',
        substitutionValues: {'name': name, 'ownerId': ownerId});

    return Team(name);
  }

  Future<void> updateTeam(Team team) {
    return connection.execute(
        'UPDATE teams SET description = @description WHERE name = @name',
        substitutionValues: {
          'name': team.name,
          'description': team.description,
        });
  }

  Future<void> deleteTeam(String name) {
    return connection
        .execute('DELETE FROM teams WHERE name = @name', substitutionValues: {
      'name': name,
    });
  }

  Future<List<Team>> getTeams(String ownerId) async {
    final rows = await connection.query(
        'SELECT name, description FROM teams WHERE owner_id = @ownerId',
        substitutionValues: {
          'ownerId': ownerId,
        });
    return rows.map((row) {
      var name = row[0];
      var description = row[1];
      return Team(name, description: description);
    }).toList();
  }

  /// Returns the team members of the given team.
  /// If the team does not exist, an empty list is returned.
  /// If the team exists but has no members, an empty list is returned.
  /// If role is not null, only members with the given role are returned.
  Future<List<TeamMember>> getTeamMembers(String teamName,
      [TeamMemberRole? role]) async {
    PostgreSQLResult rows;
    if (role != null) {
      rows = await connection.query(
          'SELECT user_id, role FROM team_members WHERE team_name = @teamName AND role = @role',
          substitutionValues: {
            'teamName': teamName,
            'role': role.index,
          });
    } else {
      rows = await connection.query(
          'SELECT user_id, role FROM team_members WHERE team_name = @teamName',
          substitutionValues: {
            'teamName': teamName,
          });
    }
    return rows.map((row) {
      var userId = row[0];
      var role = row[1];
      return TeamMember(teamName, userId, TeamMemberRole.values.byName(role));
    }).toList();
  }

  // Returns null if the team member already exists.
  Future<TeamMember?> addToTeam(
      String teamName, String userId, TeamMemberRole role) async {
    var result = await connection.execute(
        'INSERT INTO team_members (team_name, user_id, role) VALUES (@teamName, @userId, @role)',
        substitutionValues: {
          'teamName': teamName,
          'userId': userId,
          'role': role.name,
        });
    if (result == 0) {
      return null;
    }
    return TeamMember(teamName, userId, role);
  }

  Future<TeamMember?> removeFromTeam(String teamName, String userId) async {
    var result = await connection.execute(
        'DELETE FROM team_members WHERE team_name = @teamName AND user_id = @userId',
        substitutionValues: {
          'teamName': teamName,
          'userId': userId,
        });
    if (result == 0) {
      return null;
    }
    return TeamMember(teamName, userId);
  }

  Future<void> changeRole(String teamName, String userId, TeamMemberRole role) {
    return connection.execute(
        'UPDATE team_members SET role = @role WHERE team_name = @teamName AND user_id = @userId',
        substitutionValues: {
          'teamName': teamName,
          'userId': userId,
          'role': role.name,
        });
  }
}
