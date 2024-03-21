import 'package:flutter/material.dart';

class uiHelper {
  static customTextfield(
    String text,
    bool security,
    TextEditingController _controller,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField( 
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: text,
          // fillColor: Colors.grey[500],
        ),
        controller: _controller,
        obscureText: security,
      ),
    );
  }

  static customButtom(VoidCallback voidCallback, double height, double width,
      Color color, IconData iconData) {
    return InkWell(
      onTap: () {
        voidCallback();
      },
      child: Container(
        child: Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.white,
        ),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
