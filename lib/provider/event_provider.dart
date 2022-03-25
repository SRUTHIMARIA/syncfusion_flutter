import 'package:flutter/cupertino.dart';
import 'package:syncfusion_calender_app/model/events.dart';

class EventProvider extends ChangeNotifier{

  final List<Event> _events=[];

  List<Event> get events=> _events;

  DateTime _selectedDate=DateTime.now();

  DateTime get selecteddate=> _selectedDate;

  void setDate(DateTime date)=> _selectedDate=date;
  List<Event> get eventsOfSelectedDate=> _events;

  void addEvent(Event event){
    _events.add(event);
    notifyListeners();
  }

}