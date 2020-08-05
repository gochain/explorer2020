import 'package:http/http.dart' as http;
import 'dart:convert';

// Gets address data
dynamic fetchAddress(addressHash) async {
    var response = await http.get('https://explorer.gochain.io/api/address/$addressHash');
    return json.decode(response.body);
}

// Gets transactions of the address
dynamic fetchAddressTransactions(addressHash) async {
    var response = await http.get('https://explorer.gochain.io/api/address/$addressHash/transactions');
    return json.decode(response.body);
}

// Gets holders of the address
dynamic fetchAddressHolders(addressHash) async {
    var response = await http.get('https://explorer.gochain.io/api/address/$addressHash/holders');
    return json.decode(response.body);
}

// Gets internal_transactions of the address
dynamic fetchAddressIntTransactions(addressHash) async {
    var response = await http.get('https://explorer.gochain.io/api/address/$addressHash/internal_transactions');
    return json.decode(response.body);
}


// Gets contract of the address
dynamic fetchAddressContract(addressHash) async {
    var response = await http.get('https://explorer.gochain.io/api/address/$addressHash/contract');
    return json.decode(response.body);
}