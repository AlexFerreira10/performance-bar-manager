import 'package:flutter/material.dart';

class BarManager extends StatefulWidget {
  const BarManager({super.key});

  @override
  State<StatefulWidget> createState() => _BarManagerState();
}

class _BarManagerState extends State<BarManager> {
  late int _progessState;

  static const _lastState = 4;
  static const _initialState = 0;
  bool get _isInitial => _progessState == _initialState;
  bool get _isLast => _progessState == _lastState;

  @override
  void initState() {
    super.initState();
    _progessState = _initialState;
  }

  void _updateProgress() {
    if (!_isLast) {
      setState(() => _progessState++);
    }
  }

  String _getTextOnState() =>
      _isInitial ? "Inicio o progresso!" : "Tarefa finalizada!";

  @override
  Widget build(BuildContext context) => Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _isInitial || _isLast
              ? Text(
                  _getTextOnState(),
                  style: TextStyle(fontSize: 40),
                )
              : Image.asset('assets/images/barra-0$_progessState.png',
                  width: 200),
          GestureDetector(
              onTap: () => _updateProgress(),
              child: Container(
                width: 200,
                height: 50,
                color: Colors.red,
                child: Center(child: Text('Atualizar progresso!')),
              )),
          // botao de atualizar progress
        ],
      );
}
