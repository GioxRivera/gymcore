class Ejercicio {
  dynamic title;
  dynamic photo;
  dynamic calories;
  dynamic time;
  dynamic description;

  /*List<Ingridient> ingridients;
  List<TutorialStep> tutorial;
  List<Review> reviews;*/

  Ejercicio({required this.title, required this.photo, required this.calories, required this.time, required this.description/*, this.ingridients, this.tutorial, this.reviews*/});

  /*factory Ejercicio.fromJson(Map<dynamic, Object> json) {
    return Ejercicio(
      title: json['title'],
      photo: json['photo'],
      calories: json['calories'],
      time: json['time'],
      description: json['description'],
    );
  }*/
}