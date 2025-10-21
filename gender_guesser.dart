import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) async {
    if (args.isEmpty) {
      print('Please type your first or full name.');
      return;
    }

    String name = args.join(" ");
    var data = await sendRequest(name);
    String gender = data['gender'];
    double probability = data['probability'];

    print("$name is likely to be a $gender, I am ${(probability * 100).toInt()}% sure");
}

Future sendRequest(String name) async {
    var url = Uri.parse("https://api.genderize.io/?name=$name");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    print(data);
    return data;
}