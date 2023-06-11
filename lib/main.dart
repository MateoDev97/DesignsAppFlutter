import 'package:designs_flutter/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'blurHome',
      routes: {
        'basicDesign': (_) => const BasicView(),
        'scrollDesign': (_) => const ScrollDesignView(),
        'blurHome': (_) => const BlurHomeView(),
      },
    );
  }
}
