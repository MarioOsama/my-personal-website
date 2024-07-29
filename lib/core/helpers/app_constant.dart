class AppConstant {
  static const Map<String, String> skillsMap = {
    'Flutter': 'assets/images/png/flutter.png',
    'Dart': 'assets/images/png/dart.png',
    'Firebase': 'assets/images/png/firebase.png',
    'SQL': 'assets/images/png/sql.png',
    'Mongo DB': 'assets/images/png/mongodb.png',
    'Git': 'assets/images/png/git.png',
    'GitHub': 'assets/images/png/github.png',
  };

  static const Map<String, Map<String, String>> projectsImagesMap = {
    'Moyiest App': {
      'image_url': moyiestAppImageUrl,
      'description': moyiestAppDescription
    },
    'Weather App': {
      'image_url': weatherAppImageUrl,
      'description': weatherAppDescription
    },
    'Pets App': {
      'image_url': petsAppImageUrl,
      'description': petsAppDescription
    },
    'Food App': {
      'image_url': foodAppImageUrl,
      'description': foodAppDescription
    },
  };

  // Images Urls for the projects
  static const String foodAppImageUrl = 'https://iili.io/dTOzQff.md.png';
  static const String moyiestAppImageUrl = 'https://iili.io/dTOIcbt.md.png';
  static const String petsAppImageUrl = 'https://iili.io/dTOztUl.md.png';
  static const String weatherAppImageUrl = 'https://iili.io/dTOI1Xn.md.png';

  // Description for the projects
  static const String foodAppDescription =
      'Food Recipes App, application for food recipes to includes appropriate number of recipes to help user in preparing his meals';
  static const String weatherAppDescription =
      'Weather App, letting the user know the current weather condition of various regions, forecasted weather condition';
  static const String moyiestAppDescription =
      'Money Manager App, Track money flow whether expenses or incomes. Give the user some statistics for his money flow';
  static const String petsAppDescription =
      'Pets App, The main goal of this application is getting pet adopted, and some another features like pet services, veterinary services, and pet accessories';
}
