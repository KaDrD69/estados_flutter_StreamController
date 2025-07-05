import 'dart:async';

class CounterTableBloc {
  final _stateController = StreamController<int>();
  int _countermesas = 2;

  Stream get stream => _stateController.stream; 

  void valor(){
    _stateController.sink.add(_countermesas);
  }

  void valorAgregar(){    
    _countermesas++;
    _stateController.sink.add(_countermesas);
  }

  void valorRestar(){    
    _countermesas--;
    if(_countermesas < 0){
      _countermesas = 0;
    }
    _stateController.sink.add(_countermesas);
  }

  void dispose(){
    _stateController.close();
  }

}