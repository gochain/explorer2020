import 'package:http/http.dart' as http;
import 'dart:convert';


// Get stats
dynamic fetchStats() async {
    var response = await http.get('https://explorer.gochain.io/api/stats');
    return json.decode(response.body);
}