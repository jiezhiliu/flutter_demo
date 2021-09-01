import 'package:flutter/material.dart';

/// 移动旋转缩放Widget
class ControlWidgetPage extends StatefulWidget {
  @override
  _ControlWidgetPageState createState() => _ControlWidgetPageState();
}

class _ControlWidgetPageState extends State<ControlWidgetPage> {
  Offset _offset = Offset.zero;
  Offset _initialFocalPoint = Offset.zero;
  Offset _sessionOffset = Offset.zero;

  double _scale = 1.0;
  double _initialScale = 1.0;

  double rotation = 0.0;
  double lastRotation = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        _initialFocalPoint = details.focalPoint;
        _initialScale = _scale;
      },
      onScaleUpdate: (details) {
        setState(() {
          if (details.rotation != 0) {
            rotation += details.rotation - lastRotation;
            lastRotation = details.rotation;
          }
          _sessionOffset = details.focalPoint - _initialFocalPoint;
          _scale = _initialScale * details.scale;
        });
      },
      onScaleEnd: (details) {
        setState(() {
          _offset += _sessionOffset;
          _sessionOffset = Offset.zero;
          if (lastRotation != 0) {
            lastRotation = 0;
          }
        });
      },
      child: Transform.translate(
        offset: _offset + _sessionOffset,
        child: Transform.scale(
          scale: _scale,
          child: Transform.rotate(
            angle: rotation,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
