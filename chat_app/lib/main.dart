import 'package:chat_app/Themes/theme.provider.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:chat_app/services/navigation_service.dart';
import 'package:chat_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() async {
  await setup();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupFirebase();
  await registerServices();
}

class MyApp extends StatelessWidget {
  final GetIt _getIt = GetIt.instance;
  late NavigationService _navigationService;
  late AuthService _authService;
  MyApp({super.key}) {
    _navigationService = _getIt.get<NavigationService>();
    _authService = _getIt.get<AuthService>();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
        //textTheme: GoogleFonts.monntserraTextTheme(),
      ),
      initialRoute: _authService.user != null ? "/home" : "/login",
      routes: _navigationService.routes,
    );
  }
}
