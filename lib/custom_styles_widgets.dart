import 'package:flutter/material.dart';


//#region input field decoration

var borderColor = Colors.blue;
var kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white10,
  hintText: 'Enter a value...',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: borderColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: borderColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);
//#endregion


class BottomNavigator extends StatelessWidget {
  String question;
  String direction;
  Function onTap;

  BottomNavigator({
    required this.question,
    required this.direction,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Material(
          color: Colors.red.withOpacity(0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(color: Colors.grey),
                GestureDetector(
                  onTap: () {
                    this.onTap();
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            text: '$question '),
                        TextSpan(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          text: "$direction",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}