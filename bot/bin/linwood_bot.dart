import 'dart:io';

import 'package:dotenv/dotenv.dart' show load, env;
import 'package:linwood_bot/linwood_bot.dart' as linwood_bot;

void main(List<String> args) {
  load();
  String? token;
  if (args.isNotEmpty) {
    token = args[0];
  }
  token ??= env['LINWOOD_BOT_TOKEN'];
  if (token == null) {
    print(
        'Please provide a token as the first argument or set LINWOOD_BOT_TOKEN');
    exit(1);
  }
  linwood_bot.run(token);
}
