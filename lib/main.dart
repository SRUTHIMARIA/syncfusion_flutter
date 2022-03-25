import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_calender_app/provider/event_provider.dart';
import 'package:syncfusion_calender_app/screens/add_event_screen.dart';
import 'package:syncfusion_calender_app/screens/calender_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
    ChangeNotifierProvider(
      create: (context)=>EventProvider(),
        child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          accentColor: Colors.cyan,
          primaryColor: Colors.blue),
      home: MainPage(),
    ));

}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text(
          'Flutter SyncFusion Calender',
          style: TextStyle(fontSize: 24, fontFamily: 'RalewayBold'),
        ),
      ),
      body: CalenderPage(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.cyan,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddEventScreen()));
        },
      ),
    );
  }
}
