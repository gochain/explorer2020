import 'package:flutter/material.dart';
import 'homepage/home.dart';

void main() => runApp(Explorer());

class Explorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/Home': (context) => Home(),
        '/RichList': (context) => RichListState(),
        '/Contracts': (context) => ContractsState(),
        '/Wallet': (context) => WalletState(),
        '/Signers': (context) => SignersState(),
        '/RBlocks': (context) => RBlocksState(),
        '/RTransactions': (context) => RTransactionsState(),
        '/Account': (context) => AccountState(),
        '/Address': (context) => AddressState(),
      },
    );
  }
}
