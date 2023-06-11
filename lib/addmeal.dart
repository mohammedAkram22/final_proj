class Meal {
  int? id;
  String? name;
  String? restaurant_Name;
  double? cost;
  Meal({
    this.id,
    required this.name,
    required this.cost,
  });
  factory Meal.adam(bool x) {
    if (x) {
      return Meal(cost: 99.4, name: "adam", id: 1);
    } else {
      return Meal.fromMap({});
    }
  }
  Meal.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    cost = map['gpa'];
  }
  toMap() {
    return {"name": name, "cost": cost};
  }
}
