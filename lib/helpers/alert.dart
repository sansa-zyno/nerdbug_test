import 'package:nerdbug_test/helpers/style.dart';
import 'package:nerdbug_test/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDialogWidget extends StatelessWidget {
  final bool? isLoggedIn;
  final String titleText;
  final String subText;
  //final Color borderColor;

  ShowDialogWidget(
      {required this.titleText, required this.subText, this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isLoggedIn == false
                ? Center(
                    child: Icon(
                      Icons.bug_report,
                      size: 50,
                      color: red,
                    ),
                  )
                : Center(
                    child: Icon(
                      Icons.check,
                      size: 50,
                      color: green,
                    ),
                  ),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: titleText,
              fontFamily: GoogleFonts.poppins().fontFamily,
              weight: FontWeight.bold,
              textAlign: TextAlign.center,
              size: 22,
            ),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: subText,
              fontFamily: GoogleFonts.poppins().fontFamily,
              textAlign: TextAlign.center,
              size: 16,
            )
          ],
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(black)),
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ]);
  }
}
