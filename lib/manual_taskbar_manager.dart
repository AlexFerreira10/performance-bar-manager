import 'package:bar_progress/bar.dart';
import 'package:flutter/material.dart';

class ManualTaskbarManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ManualTaskbarManagerState();
}

class ManualTaskbarManagerState extends State<ManualTaskbarManager> {
  static const _width = 300.0;
  static const _height = 50.0;

  late int _progessState;
  List<int> progress = [300, 75, 15, 7];

  static const _lastState = 7;
  bool get _isLast => _progessState == _lastState;

  @override
  void initState() {
    super.initState();
    _progessState = progress[0];
  }

  int _index = 0;

  void _updateProgress() {
    if (!_isLast) {
      _index++;
      setState(() => _progessState = progress[_index]);
    }
  }

  int get _ammount => (_width ~/ _progessState);

  List<Widget> get bars {
    final list = <Widget>[];
    for (var i = 0; i < _ammount; i++) {
      list.add(Bar());
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(3))),
          child: Row(
            spacing: 2,
            children: [...bars],
          ),
        ),
        GestureDetector(
          onTap: () => _updateProgress(),
          child: Container(
            width: 200,
            height: 50,
            color: Colors.red,
            child: Center(child: Text('Atualizar progresso!')),
          ),
        ),
      ],
    );
  }
}
