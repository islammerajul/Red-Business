import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/active_button.dart';

class ActiveDeactiveSection extends StatefulWidget {
  ActiveDeactiveSection({Key? key, this.field_name}) : super(key: key);
  String? field_name;

  @override
  State<ActiveDeactiveSection> createState() => _ActiveDeactiveSectionState();
}

class _ActiveDeactiveSectionState extends State<ActiveDeactiveSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              widget.field_name!,
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
        ],
      ),
    );
  }
}
