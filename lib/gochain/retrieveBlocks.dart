import 'package:http/http.dart' as http;
import 'dart:convert';

// Get recent blocks 
dynamic fetchRecentBlocks() async {
    var response = await http.get('https://explorer.gochain.io/api/blocks');
    return json.decode(response.body);
}

// Get block details 
dynamic fetchBlockDetails(blockNumber) async {
    var response = await http.get('https://explorer.gochain.io/api/blocks/$blockNumber');
    return json.decode(response.body);
}

// Get specific block transactons
dynamic fetchBlockTransactions(blockNumber) async {
    var response = await http.get('https://explorer.gochain.io/api/blocks/$blockNumber}/transactions');
    return json.decode(response.body);
}
