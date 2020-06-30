import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmedia/pages/index.dart';

AppBar header(
    {bool isAppTitle = false,
    bool leadIcon = false,
    bool actIcon: false,
    String titleText,
    BuildContext context,
    removeBackButton = false}) {
  return AppBar(
    leading: leadIcon
        ? IconButton(
            icon: Icon(
              Icons.camera_alt,
              size: 32.0,
              color: Colors.black,
            ),
            onPressed: () => Text(""),
          )
        : Text(""),
    automaticallyImplyLeading: removeBackButton ? false : true,
    title: Text(
      isAppTitle ? "Telefone" : titleText,
      style: GoogleFonts.grandHotel(
          color: Colors.black, fontSize: isAppTitle ? 30.0 : 22.0),
      overflow: TextOverflow.ellipsis,
    ),
    actions: <Widget>[
      Transform.rotate(
        angle: 5.5,
        child: actIcon
            ? IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                  size: 25.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IndexPage()));
                })
            : Text(""),
      )
    ],
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}
