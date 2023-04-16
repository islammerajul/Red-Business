import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myTextStyle = GoogleFonts.nunito(
    textStyle: TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
));

TextStyle keywordTextStyle = GoogleFonts.nunito(
    textStyle: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
));

TextStyle hintTextStyle = GoogleFonts.roboto(
    textStyle: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
));
List<String> status = ['Pending', 'Processing', 'Completed', 'Rejected'];
String? select_status = 'Processing';
List<String> payment = ['Pending', 'Completed', 'Rejected'];
String? select_payment_status = 'Pending';
List<String> actions = ['Details', 'Invoice', 'Delete'];
String? selected_action = 'Details';
List<String> todo = ['Active', 'Deactive'];
String? selected_todo = 'Active';
List<String> email_status = ['Verified', 'Unverified'];
List<String> account = ['Active', 'Deactive'];
String? selected_emailstatus = 'Verified';
String? selected_account = 'Active';
List<String> action = ['Details', 'Change Password', 'Delete'];
String? selected_actions = 'Details';
