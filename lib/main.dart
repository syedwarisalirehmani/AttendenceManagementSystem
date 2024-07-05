import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/history_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtuosoft',
      theme: ThemeData(
        primaryColor: Color(0xFF6A1B9A),
        hintColor: Color(0xFF6A1B9A),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6A1B9A)),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
          bodySmall: TextStyle(color: Colors.white, fontSize: 16),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF6A1B9A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/history': (context) => HistoryPage(), // Add the history route
      },
    );
  }
}









// import 'package:flutter/material.dart';
// // import 'package:hrms_ui/login_page.dart';
// import 'pages/home_page.dart';
// import 'package:hrms_ui/main.dart';
// import 'package:hrms_ui/pages/login_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Virtuosoft',
//       theme: ThemeData(
//         primaryColor: Color(0xFF6A1B9A),
//         hintColor: Color(0xFF6A1B9A),
//         inputDecorationTheme: const InputDecorationTheme(
//           border: OutlineInputBorder(),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xFF6A1B9A)),
//           ),
//         ),
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
//           bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
//           bodySmall: TextStyle(color: Colors.white, fontSize: 16),
//         ),
//         buttonTheme: ButtonThemeData(
//           buttonColor: Color(0xFF6A1B9A),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//         ),
//       ),
//       home: LoginPage(),
//       routes: {
//         '/home': (context) => HomePage(),
//       },
//     );
//   }
// }



// ----------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'pages/home_page.dart';
// import 'pages/login_page.dart';
// import 'pages/history_page.dart';
// import 'providers/attendance_provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AttendanceProvider()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Virtuosoft',
//       theme: ThemeData(
//         primaryColor: Color(0xFF6A1B9A),
//         hintColor: Color(0xFF6A1B9A),
//         inputDecorationTheme: const InputDecorationTheme(
//           border: OutlineInputBorder(),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xFF6A1B9A)),
//           ),
//         ),
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
//           bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
//           bodySmall: TextStyle(color: Colors.white, fontSize: 16),
//         ),
//         buttonTheme: ButtonThemeData(
//           buttonColor: Color(0xFF6A1B9A),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//         ),
//       ),
//       home: LoginPage(),
//       routes: {
//         '/home': (context) => HomePage(),
//         '/history': (context) => HistoryPage(),
//       },
//     );
//   }
// }
