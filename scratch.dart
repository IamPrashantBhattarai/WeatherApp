import 'dart:io';

void main() {
  performTask();
}

void performTask() async {
  task1();
  String task2reasult = await task2();
  task3(task2reasult);
}

void task1() {
  String reasult = 'task 1 done';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration fiveSoconds = Duration(seconds: 5);
  String reasult = "";
  await Future.delayed(fiveSoconds, () {
    reasult = 'task 2 done';
    print('Task 2 complete');
  });
  return reasult;
}

void task3(String task2data) {
  String reasult = 'task 3 done';
  print('Task 3 complete with $task2data.');
}
