import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TimePickPage extends StatefulWidget {
  @override
  _TimePickPageState createState() => _TimePickPageState();
}

class _TimePickPageState extends State<TimePickPage> {
  /// 当前时间
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 当前时间的时间戳 13位
    int milliseconds = _dateTime.millisecondsSinceEpoch;
    print('====当前时间==$_dateTime');
    print("====当前时间戳=$milliseconds");
    print(
        "====当前时间戳转化成时间===== ${DateTime.fromMillisecondsSinceEpoch(milliseconds)}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试原生日期时间'),
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
                    Text("${formatDate(_dateTime, [
                          yyyy,
                          '年',
                          mm,
                          '月',
                          dd,
                          '日'
                        ])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  _showDatePicker();
                },
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${_timeOfDay.format(context)}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: () {
                  _showTimePicker();
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  _showDatePicker() async {
    var time = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      currentDate: _dateTime,
      cancelText: "取消",
      confirmText: "确定",
      locale: Locale("zh"),
    );
    if (time != null) {
      setState(() {
        _dateTime = time;
      });
    }
  }

  void _showTimePicker() async {
    var timeOfDay = await showTimePicker(
      context: context,
      initialTime: _timeOfDay,
      cancelText: "取消",
      confirmText: "确定",
    );
    if (timeOfDay != null) {
      setState(() {
        _timeOfDay = timeOfDay;
      });
    }
  }
}
