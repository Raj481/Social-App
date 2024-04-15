
abstract class AppState {}

class InitialState extends AppState {}
class ProgressRunningState extends AppState {}
class ProgressCompletedState extends AppState {}
class ErrorState extends AppState {}