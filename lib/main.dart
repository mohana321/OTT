import 'package:flutter/material.dart';
import 'package:ott/home.dart';
import 'package:ott/provider/provider.dart';

import 'package:ott/splas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'downloads.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>Uiprovider()..init(),
      child: Consumer<Uiprovider>(
        builder: (context, Uiprovider notifier,child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: notifier.isDark ? notifier.darkTheme : notifier
                .lightTheme,
            theme:
            notifier.isDark ?

            ThemeData(
              useMaterial3: true,
              colorScheme:
              ColorScheme.fromSeed(
                  brightness: Brightness.dark, seedColor: Colors.green),
              textTheme:
              GoogleFonts.montserratTextTheme(Theme
                  .of(context)
                  .textTheme),
              primaryTextTheme: GoogleFonts.montserratTextTheme(Theme
                  .of(context)
                  .textTheme),
            )
                : ThemeData(
              useMaterial3: true,
              colorScheme:
              ColorScheme.fromSeed(
                  brightness: Brightness.light, seedColor: Colors.red),
              textTheme:
              GoogleFonts.montserratTextTheme(Theme
                  .of(context)
                  .textTheme).apply(bodyColor: Colors.black),
              primaryTextTheme: GoogleFonts.montserratTextTheme(Theme
                  .of(context)
                  .textTheme).apply(
                  bodyColor: Colors.black),
            ),
            home: spl(),

          );
        }

      ),

    );
  }
}

//
// class qwertyu extends StatefulWidget {
//   const qwertyu({super.key});
//
//   @override
//   State<qwertyu> createState() => _qwertyuState();
// }
//
// class _qwertyuState extends State<qwertyu> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//         Row(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height/2.5,
//               width: MediaQuery.of(context).size.width/2.5,
//               color: Colors.cyan,),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: MediaQuery.of(context).size.height/2.5,
//                 width: MediaQuery.of(context).size.width/2.5,
//                 color: Colors.cyan,),
//             ),
//           ],
//         )
//         ],
//       ),
//     );
//   }
// }
