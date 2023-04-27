class TestimonialModel {
  String? img;
  String? language;
  String? name;
  String? occupation;
  String? feedback;
  int? serial;
  String? publish_date;

  TestimonialModel(this.img, this.language, this.name, this.occupation,
      this.feedback, this.serial, this.publish_date);

  static List<TestimonialModel> generateTestimonialList() {
    return [
      TestimonialModel("assets/images/testimonial1.jpg", "Bangla",
          "Testimonial 1", "occupation", "feedback", 1, "14th November, 2021"),
      TestimonialModel("assets/images/testimonial2.jpg", "Bangla",
          "Testimonial 2", "occupation", "feedback", 2, "14th November, 2021"),
      TestimonialModel("assets/images/testimonial3.jpg", "Bangla",
          "Testimonial 3", "occupation", "feedback", 3, "14th November, 2021")
    ];
  }
}
