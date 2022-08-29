import 'dart:html';
import 'dart:math';


class Brain {
  Brain(this.height, this.weight, {Height, Weight});
  final int height;
  final int weight;
  late double bmres=0;
  String calculate() {
    bmres = weight / pow(height / 100, 2);
    return bmres.toStringAsFixed(1);
  }

  String bmiResult() {
    if (bmres >= 25) {
      return "OverWeight";
    } else if (bmres > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String expln() {
    if (bmres >= 25) {
      return 'You have a Higher than normal body weight. Try exercise more';
    } else if (bmres > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return 'You Have a lower than normal body weight. You get eat a bit more.';
    }
  }
}
