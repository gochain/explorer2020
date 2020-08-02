import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
            width: 1600,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                  child: Row(
                    children: [
                      Text('Go'),
                      Text('Chain '),
                      Text('Blockchain Explorer')
                    ],
                  ),
                ),
                Container(
                  width: 1550,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300]),
                )
              ],
            ))
      ],
    ));
  }
}
