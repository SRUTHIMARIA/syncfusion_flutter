import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_calender_app/model/event_data_source.dart';
import 'package:syncfusion_calender_app/provider/event_provider.dart';
import 'package:syncfusion_calender_app/screens/calender_page.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_core/theme.dart';


class TasksWidget extends StatefulWidget {
  @override
  _TasksWidgetState createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<EventProvider>(context);
    final selectedEvents=provider.eventsOfSelectedDate;
    if(selectedEvents.isEmpty){
      return Center(
        child: Text(
          'No Events Found',
          style: TextStyle(fontFamily: 'RalewayBold',fontSize: 24),
        ),
      );
    }
    return SfCalendarTheme(
        data: SfCalendarThemeData(timeTextStyle: TextStyle(color: Colors.white,
            fontSize: 16
        )),
        child: SfCalendar(
          view:CalendarView.timelineDay,
          dataSource: EventDataSource(provider.events),
          initialDisplayDate: provider.selecteddate,
         headerHeight: 0,
         todayHighlightColor: Colors.white,
         selectionDecoration: BoxDecoration(
           color: Colors.cyan.withOpacity(0.3),
         ),
         // appointmentBuilder: appointmentBuilder,
          onTap: (details){
            if(details.appointments==null)
              return;

            final event=details.appointments!.first;
            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EventViewingPage(event:event)));

          },

        )

    );
  }

  // Widget appointmentBuilder(
  //     BuildContext context,
  //     CalenderAppointmentDetails details,
  //     ){
  //   final event=details.appointments.first;
  //
  //   return Container(
  //     width: details.bounds.width,
  //     height: details.bounds.height,
  //     decoration: BoxDecoration(
  //       color: event.backgroundColor.withOpacity(0.5),
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Text (event.title,
  //     maxLines: 2,
  //     overflow: TextOverflow.ellipsis,
  //     style: TextStyle(
  //       color: Colors.black,
  //       fontSize: 20
  //     ),),
  //   );
  //
  //
  // }

}

