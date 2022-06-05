class Projects {
  final String name, year, img;
  final String? info;
  final List<String> technologies;

  Projects({
    required this.name,
    required this.year,
    required this.img,
    this.info = "",
    required this.technologies,
  });
}
