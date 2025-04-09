import 'package:go_router/go_router.dart';
import 'package:notes_app/routing/app_routes.dart';
import 'package:notes_app/views/notes_view.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.notesView,
    routes: [
      GoRoute(
        path: AppRoutes.notesView,
        name: AppRoutes.notesView,
        builder: (context, state) =>const NotesView(),
      ),
    ],
  );
}
