import 'package:nyxx/nyxx.dart';
import 'package:nyxx_interactions/nyxx_interactions.dart';

final singleCommand =
    SlashCommandBuilder("help", "This is example help command", [])
      ..registerHandler((event) async {
        // Handler accepts a function with parameter of SlashCommandInteraction which contains
        // all of the stuff need to respond to interaction.
        // From there you have two routes: ack and then respond later or respond immediately without ack.
        // Sending ack will display indicator that bot is thinking and from there you will have 15 mins to respond to
        // that interaction.
        await event.respond(MessageBuilder.content("Work in progress"),
            hidden: true);
      });

void run(String token) {
  final bot =
      NyxxFactory.createNyxxWebsocket(token, GatewayIntents.allUnprivileged)
        ..registerPlugin(Logging())
        ..registerPlugin(CliIntegration())
        ..registerPlugin(IgnoreExceptions())
        ..connect();

  IInteractions.create(WebsocketInteractionBackend(bot))
    ..registerSlashCommand(singleCommand)
    ..syncOnReady();
}
