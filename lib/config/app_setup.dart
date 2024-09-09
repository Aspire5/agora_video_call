
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:permission_handler/permission_handler.dart';

/// A utility class responsible for setting up the environment and
/// loading necessary configurations for the app.
///
/// This class is designed to handle various setup processes (e.g.,
/// loading environment variables from a `.env` file), which can be
/// extended as the app grows.
class AppSetup {

  /// Calls all the setup methods required to initialize the app.
  /// Currently, it loads environment variables, but more setup steps
  /// can be added here in the future.
  Future<void> setupAll() async {
    _getPerms();
    _loadEnv();  // Loads environment variables from the .env file.
  }

  /// Loads environment variables from a `.env` file using `flutter_dotenv`.
  ///
  /// Ensure that the `.env` file exists in the root of the project and
  /// contains the necessary key-value pairs for configuration. This method
  /// is asynchronous as it reads the file from disk.
  Future<void> _loadEnv() async {
    await dotenv.load(fileName: "assets/.env");
  }

  /// Getting all necessary permissions required for video call.
  Future<void> _getPerms() async {
    await [Permission.microphone, Permission.camera].request();
  }
}
