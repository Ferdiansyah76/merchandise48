import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes/app_router.dart';
import 'package:merchandise48/core/theme/app_theme.dart';
import 'package:merchandise48/features/auth/presentation/providers/auth_provider.dart';
import 'package:merchandise48/features/dashboard/presentation/providers/product_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        title:                     'My App',
        debugShowCheckedModeBanner: false,
        theme:                     AppTheme.light,
        initialRoute:              AppRouter.splash,
        routes:                    AppRouter.routes,
      ),
    );
  }
}