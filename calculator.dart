void main(List<String> args) {
  if (args.length == 0) {
    print('''
Usage: 
This program is arguments-based. Please use the following syntax: calculator.dart [x] [operator] [y]
For example: 

calculator.dart 5 * 2
''');
    return;
  }

  num x = num.parse(args[0]);
  num y = num.parse(args[2]);
  switch (args[1]) {
    case '+':
      print(x + y);
      break;
    case '-':
      print(x - y);
      break;
    case '*':
      print(x * y);
      break;
    case '/':
      print(x / y);
      break;
    default:
      print("Unsupported operation");
      break;
  }
}
