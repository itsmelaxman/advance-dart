// Command Pattern Example in Dart
abstract class Command {
  void execute();
}

class Light {
  void turnOn() => print('Light is ON');
  void turnOff() => print('Light is OFF');
}

class TurnOnCommand implements Command {
  final Light light;
  TurnOnCommand(this.light);
  @override
  void execute() => light.turnOn();
}

class TurnOffCommand implements Command {
  final Light light;
  TurnOffCommand(this.light);
  @override
  void execute() => light.turnOff();
}

class RemoteControl {
  Command? command;
  void pressButton() => command?.execute();
}

void main() {
  var light = Light();
  var remote = RemoteControl();
  remote.command = TurnOnCommand(light);
  remote.pressButton();
  remote.command = TurnOffCommand(light);
  remote.pressButton();
}
