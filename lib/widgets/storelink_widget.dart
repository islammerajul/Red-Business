import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';

class StoreLinkWidget extends StatelessWidget {
  const StoreLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      //height: 140,
      //width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Mr Keeper",
              style: myTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            "Share your store link with your customers",
            style: hintTextStyle.copyWith(color: Colors.blueGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "mr-keeper.redshop.io",
                      style: hintTextStyle.copyWith(
                          color: Colors.blueGrey, fontSize: 18),
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //spacing: 10,
              //direction: Axis.horizontal,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 48),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black),
                    child: Row(
                      children: [
                        Text(
                          "VISIT",
                          style: myTextStyle.copyWith(color: Colors.white),
                        ),
                        Icon(Icons.ad_units, color: Colors.white),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 48),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.red),
                    child: Row(
                      children: [
                        Text(
                          "Share",
                          style: myTextStyle.copyWith(color: Colors.white),
                        ),
                        Icon(Icons.ad_units, color: Colors.white),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
