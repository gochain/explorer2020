import 'package:http/http.dart' as http;
import 'dart:convert';

// Get tx transactions
dynamic fetchTransaction(txHash) async {
    var response = await http.get('https://explorer.gochain.io/api/transaction/$txHash');
    return json.decode(response.body);
}