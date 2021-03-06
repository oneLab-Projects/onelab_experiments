import 'package:onelab_experiments/component/router/router.dart';
import 'package:onelab_experiments/ui/feature/not_found_page.dart';
import 'package:onelab_experiments/ui/feature/project_page.dart';
import 'package:onelab_experiments/ui/feature/projects_page.dart';
import 'package:onelab_experiments/ui/feature/welcome_page.dart';
import 'package:pansy_ui/pansy_ui.dart';

class Routes {
  static const String WELCOME = '/';
  static const String PROJECTS = '/projects';
  static const String PROJECTS_2 = '/project';
  static const String PROJECT = '/project/:id';

  static String projectWithId(int id) => '/project/$id';

  static final router = Router({
    WELCOME: (BuildContext context, parameters) => WelcomePage(),
    PROJECTS: (BuildContext context, parameters) => ProjectsPage(),
    PROJECTS_2: (BuildContext context, parameters) => ProjectsPage(),
    PROJECT: (BuildContext context, parameters) {
      var id = int.tryParse(parameters['id'].first);

      if (id == null) return ProjectsPage();
      return ProjectPage(id: id);
    },
  },
      onUnknownRouteHandler: (BuildContext context, parameters) =>
          NotFoundPage());
}
