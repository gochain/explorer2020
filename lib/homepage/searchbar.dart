import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../gochain/retrieveBlocks.dart';


class SearchBar extends StatelessWidget {
  final searchField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
          child: Column(
        children: [
          Container(
              width: 1300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, bottom: 8),
                    child: Row(
                      children: [
                        _TitleText('Go', 36, 0, 179),
                        _TitleText('Chain', 0, 153, 255),
                        _TitleText(' Blockchain Explorer', 0, 0, 0)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 10),
                        child: Container(
                            width: 1180,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[300]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(20))),
                                  labelText:
                                      'Search by transaction, address, or block'),
                              controller: searchField,
                            )),
                      ),
                      MaterialButton(
                          height: 40,
                          minWidth: 50,
                          color: Colors.grey[700],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          onPressed: () {
                            if (searchField.text.startsWith("0x") && searchField.text.trim().length == 42) {
                              Fluttertoast.showToast(
                                  msg: "Address hash recognized.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  webPosition: "center",
                                  webBgColor: "linear-gradient(to right, #00b09b, #96c93d)",
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                            );
                            }
                            else if(searchField.text.startsWith("0x") && searchField.text.trim().length == 66) {
                              //! TODO: Detect difference from a transaction input and a block input.
                            } else {
                                Fluttertoast.showToast(
                                  msg: "You have provided an invalid entry.",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  webPosition: "center",
                                  webBgColor: "linear-gradient(to right, #D7816A, #BD4F6C)",
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                            );
                              //! Add some type of notification system to alert that an invalid input was provided.
                            }
                          },
                          child: Icon(Icons.search))
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String text;
  final int rnum;
  final int gnum;
  final int bnum;
  const _TitleText(this.text, this.rnum, this.gnum, this.bnum);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: 20, color: Color.fromRGBO(rnum, gnum, bnum, 1)),
    );
  }
}
