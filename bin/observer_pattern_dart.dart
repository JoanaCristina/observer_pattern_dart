import 'counter.dart';

void main(List<String> arguments) async {
  var controller = Counter();

  //cadastrando uma função
  controller.addListener(() {
    print(controller.value);
    //print('\x1B[2J\x1B[0;0H');
    //print(List.generate(controller.value, (index) => '=').join());
  });

  controller.increment();
  await Future.delayed(Duration(seconds: 1));
  controller.increment();
  await Future.delayed(Duration(seconds: 1));
  controller.increment();
  await Future.delayed(Duration(seconds: 1));
  controller.increment();
  Future.delayed(Duration(seconds: 1));
}
