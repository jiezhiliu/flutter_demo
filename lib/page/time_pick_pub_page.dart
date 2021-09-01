import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:date_format/date_format.dart';

class TimePickPubPage extends StatefulWidget {
  @override
  _TimePickPubPageState createState() => _TimePickPubPageState();
}

class _TimePickPubPageState extends State<TimePickPubPage> {
  DateTime _dateTime = DateTime.now();
  // String _format = 'yyyy年MM月dd日    EEE,HH时:mm分';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试第三方日期时间'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "${formatDate(DateTime(_dateTime.year, _dateTime.month, _dateTime.day, _dateTime.hour, _dateTime.minute, _dateTime.second), [
                          yyyy,
                          '年',
                          mm,
                          '月',
                          dd,
                          '日',
                          HH,
                          '时',
                          ':',
                          nn,
                          '分',
                        ])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  _showDateTimePick();
                },
              )
            ],
          )
        ],
      ),
    );
  }

  void _showDateTimePick() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime(1980),
      maxDateTime: DateTime(2100),
      initialDateTime: _dateTime,
      dateFormat: "yyyy年-MM月-dd日    HH时:mm分", // show TimePicker
      locale: DateTimePickerLocale.zh_cn,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker

      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
}
