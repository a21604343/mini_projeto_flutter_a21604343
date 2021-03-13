

import 'dart:async';


class incidentesController{
  String _content;

  StreamController _controller = StreamController();
  Sink get _input => _controller.sink;
  Stream get _output => _controller.stream;

  void onReceiveIncidente(incidente){

  }

  void onEditIncidente(incidente){

  }

  void deleteIncidente(incidente){

  }


}