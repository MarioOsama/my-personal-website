class ProjectModel {
  final String title;
  final String imageUrl;
  final String description;
  final List<String> tools;
  final Map<String, String> links;

  const ProjectModel({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.tools,
    required this.links,
  });
}
