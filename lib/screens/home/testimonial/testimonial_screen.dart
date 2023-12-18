import 'package:flutter/material.dart';
import 'package:red_business247/models/testimonial_model.dart';
import 'package:red_business247/screens/home/testimonial/add_testimonial.dart';
import 'package:red_business247/screens/home/testimonial/edit_testimonial_info.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class TestimonialScreen extends StatefulWidget {
  final testimonial_list = TestimonialModel.generateTestimonialList();

  @override
  State<TestimonialScreen> createState() => _TestimonialScreenState();
}

class _TestimonialScreenState extends State<TestimonialScreen> {
  //var test;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Testimonials"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AddTestimonial()));
              });
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: PageView.builder(
            itemCount: widget.testimonial_list.length,
            itemBuilder: (context, index) {
              var test = widget.testimonial_list[index];
              return Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          "${test.img}",
                        ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "${test.name}",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Publish date : ${test.publish_date}",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Serial Number : ${test.serial}",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => EditTestimonialInfo()));
                                },
                                child: Icon(Icons.edit)),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Icon(Icons.delete))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
