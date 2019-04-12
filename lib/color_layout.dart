import 'package:flutter/material.dart';

const _padding = 10.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _padding),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  color: Colors.blue,
                )),
          ),
          Container(
            width: _padding,
          ),
          Expanded(
              child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Column(children: [
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  ]))),
        ],
      ),
    );
  }
}

class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        color: Colors.grey[300],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 80,
            ),
            _FirstRow()
          ],
        ),
      ),
    );
  }
}
