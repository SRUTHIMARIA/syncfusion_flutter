// import 'package:flutter/material.dart';
// import 'package:syncfusion_calender_app/model/events.dart';
//
// class EventViewingPage extends StatefulWidget {
//   final Event event;
//   const EventViewingPage({
//     Key? key,required this.event
// }):super(key:key);
//   @override
//   _EventViewingPageState createState() => _EventViewingPageState();
// }
//
// class _EventViewingPageState extends State<EventViewingPage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         leading: CloseButton(),
//         actions: [
//           buildViewingActions(context,event),
//         ],
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(32),
//         children: [
//           buildDateTime(event),
//           Text(event.title,
//           )
//         ],
//       ),
//
//     );
//
//   }
//
//   Widget buildDateTime( Event event) {
//     return Column(children: [
//       buildDate(event.iAllDay? 'All day':'From',event.from),
//       if(!event.isAllDay) buildDate('To',event.to),
//     ],);
//   }
//   Widget buildDate( String title,DateTime date) {
//     return Column(children: [
//       buildDate(event.iAllDay? 'All day':'From',event.from),
//       if(!event.isAllDay) buildDate('To',event.to),
//     ],);
//   }
// }
