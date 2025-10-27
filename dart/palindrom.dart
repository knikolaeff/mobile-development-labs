void main(List<String> args) {
  var phrase = args.join().toLowerCase();
  var reversed = phrase.split('').reversed.join();

  if (phrase == reversed) {
    print("This is a palindrome");
  }
  else {
    print("This is not a palindrome");
  }
}
