enum Status { none, running, stopped, paused }

void main() {
  print("${Status.values}\n");
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));

  print('\nrunning: ${Status.running}, ${Status.running.index}');
  print('\nrunning index: ${Status.values[1]}');
}

void handleStatus(Status s) {
  switch (s) {
    case Status.running:
      print('System is running');
      break;
    case Status.stopped:
      print('System has stopped');
      break;
    default:
      print('Unknown state');
  }
}
