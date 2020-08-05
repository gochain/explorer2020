import 'package:http/http.dart' as http;
import 'dart:convert';


// Get richlist
dynamic fetchRichlist() async {
    var response = await http.get('https://explorer.gochain.io/api/richlist');
    return json.decode(response.body);
}