import 'package:mario_osama/features/projects/data/models/project_model.dart';

class AppConstant {
  // Logo
  static const String logoAssetName = 'assets/images/svg/logo.svg';

  // Actions Bar
  static const List<String> actionBarTitlesList = [
    'Home',
    'Brief',
    'Projects',
    'Contact',
  ];

  // Profile
  static const Map<String, Map<String, String>> profileIconsMap = {
    'GitHub': {
      'icon': 'assets/images/svg/github.svg',
      'url': 'https://github.com/MarioOsama'
    },
    'LinkedIn': {
      'icon': 'assets/images/svg/linkedin.svg',
      'url': 'https://www.linkedin.com/in/mario-osama-fayez/'
    },
    'Gmail': {
      'icon': 'assets/images/svg/gmail.svg',
      'url': 'mailto:marioosamafayez@gmail.com'
    },
    'Resume': {
      'icon': 'assets/images/svg/resume.svg',
      'url':
          'https://drive.google.com/file/d/1oWhkwTn0te9GoaorVSO6L9WutqTLnGZA/view?usp=sharing'
    },
  };

  // Skills
  static const Map<String, String> skillsMap = {
    'Flutter': 'assets/images/png/flutter.png',
    'Dart': 'assets/images/png/dart.png',
    'Firebase': 'assets/images/png/firebase.png',
    'SQL': 'assets/images/png/sql.png',
    'Mongo DB': 'assets/images/png/mongodb.png',
    'Git': 'assets/images/png/git.png',
    'GitHub': 'assets/images/png/github.png',
  };

  // Projects
  static const List<ProjectModel> projectsList = [
    ProjectModel(
      title: 'Moyiest App',
      imageUrl: moyiestAppImageUrl,
      description: moyiestAppDescription,
      githubUrl: moyiestAppGithubUrl,
      tools: moyiestAppTools,
    ),
    ProjectModel(
      title: 'Weather App',
      imageUrl: weatherAppImageUrl,
      description: weatherAppDescription,
      githubUrl: weatherAppGithubUrl,
      tools: weatherAppTools,
    ),
    ProjectModel(
      title: 'Pets App',
      imageUrl: petsAppImageUrl,
      description: petsAppDescription,
      githubUrl: petsAppGithubUrl,
      tools: petsAppTools,
    ),
    ProjectModel(
      title: 'Food App',
      imageUrl: foodAppImageUrl,
      description: foodAppDescription,
      githubUrl: foodAppGithubUrl,
      tools: foodAppTools,
    ),
  ];

  // Images Urls for the projects
  static const String foodAppImageUrl = 'https://iili.io/dTOzQff.md.png';
  static const String moyiestAppImageUrl = 'https://iili.io/dTOIcbt.md.png';
  static const String petsAppImageUrl = 'https://iili.io/dTOztUl.md.png';
  static const String weatherAppImageUrl = 'https://iili.io/dTOI1Xn.md.png';

  // Description for the projects
  static const String foodAppDescription =
      """Food Recipes App, application for food recipes to includes appropriate number of recipes to help user in preparing meals
- User can search for a recipe by its name.
- User can filter recipes by various filters like Gluten-free, Vegetarian, Vegan.
- User can add a recipe to his favorite list.
- User friendly interface.""";
  static const String weatherAppDescription =
      """Letting the user know the current weather condition of various regions, forecasted weather condition
- User can search for the weather condition of any city.
- Show weather condition and forecasted weather for the next 5 days.
- Show weather condition, temperature, humidity, wind speed, and pressure.
- With some animations to make the app more attractive.
- The app can be used in both Arabic and English.
- User friendly interface.""";
  static const String moyiestAppDescription =
      """Money Manager App, Track money flow whether expenses or incomes.
- User can add or delete his expenses or incomes with attachment and some notes.
- User can add or delete custom categories.
- Give the user some statistics for his money flow.
- Provide high level of security by locking the app with PIN.
- The app can be used in both Arabic and English.
- User friendly interface.""";
  static const String petsAppDescription =
      """Pets App, The main goal of this application is getting pet adopted, and some another features like pet services, veterinary services, and pet accessories
- User can search for pets to adopt.
- User can add a pet to be adopted.
- User can add a pet to his favorite list.
- User can search for pet services, veterinary services, and pet accessories.
- User friendly interface.""";

  // Github Urls for the projects
  static const String foodAppGithubUrl =
      'https://github.com/MarioOsama/food-recipes-app';
  static const String moyiestAppGithubUrl =
      'https://github.com/MarioOsama/money_manager';
  static const String petsAppGithubUrl =
      'https://github.com/MarioOsama/pet-adoption-app';
  static const String weatherAppGithubUrl =
      'https://github.com/MarioOsama/weather_app';

  // Used tools for the projects
  static const List<String> foodAppTools = [
    'Flutter',
    'Dart',
    'Firebase',
    'Provider',
    'API Integration',
    'Responsive UI',
  ];
  static const List<String> moyiestAppTools = [
    'Flutter',
    'Dart',
    'Hive',
    'BLoC',
    'Localization',
    'Responsive UI',
  ];
  static const List<String> petsAppTools = [
    'Flutter',
    'Dart',
    'Firebase',
    'Provider',
    'Responsive UI',
  ];
  static const List<String> weatherAppTools = [
    'Flutter',
    'Dart',
    'API Integration',
    'BLoC',
    'Localization',
    'Animations',
    'Responsive UI',
  ];

  // Contact
  static const contactMessage =
      "I'm always on the lookout for exciting projects and new connections. Whether you're looking for a Flutter developer, need some tech advice, or just want to connect, I'd love to hear from you. Send me a message, and let's start the conversation.";
  static const emialAddress = 'marioosamafayez@gmail.com';
  static const phoneNumber = '01221826469';
  static const Map<String, String> contactsMap = {
    emialAddress: 'assets/images/svg/gmail.svg',
    phoneNumber: 'assets/images/svg/whatsapp.svg',
  };
}
