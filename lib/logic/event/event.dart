
abstract class AppEvent {}

class InitialEvent extends AppEvent {}
class ProgressRunningEvent extends AppEvent {}
class ProgressCompletedEvent extends AppEvent {}
class ErrorEvent extends AppEvent {}