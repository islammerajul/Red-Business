import 'package:flutter/material.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/details_field.dart';

class CustomerDetails extends StatefulWidget {
  CustomerDetails({Key? key, this.username, this.email}) : super(key: key);
  final String? username;
  final String? email;

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Details"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg9OfhDN5gZXDuzKL3D9WvCPSsfagkX0mnJw&usqp=CAU",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DetailsField(
                title: 'Username :',
                value: '${widget.username}',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'First Name :',
                value: 'yash',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'Last Name :',
                value: 'nakayos',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'Email :',
                value: '${widget.email}',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'Number :',
                value: '-',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'City :',
                value: '-',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'State :',
                value: '-',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'Country :',
                value: '-',
              ),
              SizedBox(
                height: 10,
              ),
              DetailsField(
                title: 'Address :',
                value: '4496 Berkshire Circle, Knoxville, Tennessee, US',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Account Status : ",
                      style: keywordTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 3,
                    child: DropdownButtonFormField(
                        dropdownColor: Colors.blue,
                        decoration: InputDecoration(
                            fillColor: Colors.green[300],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(width: 0.5),
                            )),
                        items: account
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selected_account = item;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Email Status : ",
                      style: keywordTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 3,
                    child: DropdownButtonFormField(
                        dropdownColor: Colors.blue,
                        decoration: InputDecoration(
                            fillColor: Colors.green[300],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(width: 0.5),
                            )),
                        items: email_status
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (item) {
                          setState(() {
                            selected_emailstatus = item;
                          });
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
