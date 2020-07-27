import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// Gets address data

Future<Address> fetchAddress({@required addressHash}) async {
  final response =
      await http.get('https://explorer.gochain.io/api/address/$addressHash');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Address.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('an error has occured.');
  }
}

class Address {
  final String address;
  final String balance;
  final String balanceWei;
  final String updatedAt;
  final String totalSupply;
  final bool contract;
  final Map erctypes;
  final Map interfaces;
  final int numberOfTransactions;
  final Map attachedContract;

  Address({this.address, this.balance, this.balanceWei, this.updatedAt, this.totalSupply, this.contract, this.erctypes, this.interfaces, this.numberOfTransactions, this.attachedContract});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      address: json['address'],
      balance: json['balance'],
      balanceWei: json['balance_wei'],
      updatedAt: json['updated_at'],
      totalSupply: json['total_supply'],
      contract: json['contract'],
      erctypes: json['erc_types'],
      interfaces: json['erc_types'],
      numberOfTransactions: json['number_of_transactions'],
      attachedContract: json['attached_contract']
    );
  }
}

// Gets transactions of the address

Future<AddressTransactions> fetchAddressTransactions({@required addressHash}) async {
  final response =
      await http.get('https://explorer.gochain.io/api/address/$addressHash/transactions');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AddressTransactions.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('an error has occured.');
  }
}

class AddressTransactions {
  final int userId;
  final int id;
  final String title;

  AddressTransactions({this.userId, this.id, this.title});

  factory AddressTransactions.fromJson(Map<String, dynamic> json) {
    return AddressTransactions(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


// Gets holders of the address

Future<AddressHolders> fetchAddressHolders({@required addressHash}) async {
  final response =
      await http.get('https://explorer.gochain.io/api/address/$addressHash/holders');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AddressHolders.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('an error has occured.');
  }
}

class AddressHolders {
  final int userId;
  final int id;
  final String title;

  AddressHolders({this.userId, this.id, this.title});

  factory AddressHolders.fromJson(Map<String, dynamic> json) {
    return AddressHolders(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


// Gets internal_transactions of the address

Future<AddressIntTransactions> fetchAddressIntTransactions({@required addressHash}) async {
  final response =
      await http.get('https://explorer.gochain.io/api/address/$addressHash/internal_transactions');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AddressIntTransactions.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('an error has occured.');
  }
}

class AddressIntTransactions {
  final int userId;
  final int id;
  final String title;

  AddressIntTransactions({this.userId, this.id, this.title});

  factory AddressIntTransactions.fromJson(Map<String, dynamic> json) {
    return AddressIntTransactions(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


// Gets contract of the address

Future<AddressContract> fetchAddressContract({@required addressHash}) async {
  final response =
      await http.get('https://explorer.gochain.io/api/address/$addressHash/contract');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return AddressContract.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('an error has occured.');
  }
}

class AddressContract {
  final int userId;
  final int id;
  final String title;

  AddressContract({this.userId, this.id, this.title});

  factory AddressContract.fromJson(Map<String, dynamic> json) {
    return AddressContract(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}