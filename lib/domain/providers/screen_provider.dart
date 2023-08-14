import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskie/screens/dashboard/analysis_screen.dart';
import 'package:taskie/screens/dashboard/home_screen.dart';
import 'package:taskie/screens/dashboard/profile_screen.dart';
import 'package:taskie/screens/dashboard/projects_screen.dart';

final screenProvider = Provider<List>((ref) {
  return const [
    HomeScreen(),
    ProjectsScreen(),
    AnalysisScreen(),
    ProfileScreen()
  ];
});
