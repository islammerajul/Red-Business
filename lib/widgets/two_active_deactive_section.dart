import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';

class TwoActiveDeactiveSection extends StatefulWidget {
  TwoActiveDeactiveSection(
      {Key? key, this.first_field_name, this.second_field_name})
      : super(key: key);
  String? first_field_name, second_field_name;

  @override
  State<TwoActiveDeactiveSection> createState() =>
      _TwoActiveDeactiveSectionState();
}

class _TwoActiveDeactiveSectionState extends State<TwoActiveDeactiveSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              widget.first_field_name!,
              style: keywordTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ActiveDeactiveButton(
                    text: 'Active',
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: ActiveDeactiveButton(
                    text: 'Deactive',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              widget.second_field_name!,
              style: keywordTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ActiveDeactiveButton(
                    text: 'Active',
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: ActiveDeactiveButton(
                    text: 'Deactive',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
