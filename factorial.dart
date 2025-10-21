void main(List<String> args) {
  num x = num.parse(args[0]);
  num result = x;
  if (x < 0) {
    print("The number must be positive.");
    return;
  } else if (x == 0) {
    print("1");
    return;
  }

  while (x > 1) {
    x--;
    result *= x;  
  }
  
  print(result);
}