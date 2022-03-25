import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_calender_app/model/event_data_source.dart';
import 'package:syncfusion_calender_app/provider/event_provider.dart';
import 'package:syncfusion_calender_app/widget/task_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    return SfCalendar(
      view: CalendarView.month,
      dataSource: EventDataSource(events),
      initialSelectedDate: DateTime.now(),
      cellBorderColor: Colors.transparent,
      onLongPress: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);
        provider.setDate(details.date!);
        
        showModalBottomSheet(context: context, builder: (context)=>TasksWidget());
      },
    );
  }
}

// class CalenderPage extends StatefulWidget {
//   @override
//   _CalenderPageState createState() => _CalenderPageState();
// }
//
// class _CalenderPageState extends State<CalenderPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SfCalendar(
//       view: CalendarView.month,
//       initialSelectedDate: DateTime.now(),
//       cellBorderColor: Colors.transparent,
//
//     );
//   }
// }
