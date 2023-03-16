class Recipe {
  final String imageUrl;
  final String name;
  final String createdBy;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final int kcalories;
  final int servings;

  Recipe({
    required this.imageUrl,
    required this.name,
    required this.createdBy,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.kcalories,
    required this.servings,
  });
}
