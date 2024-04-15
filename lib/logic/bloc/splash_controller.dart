
import 'package:bloc/bloc.dart';
import 'package:socialapp/logic/event/event.dart';
import 'package:socialapp/logic/state/state.dart';

class SplashController extends Bloc<AppEvent, AppState> {
  SplashController() : super(InitialState()){
    on<InitialEvent>(onInitialEvent );
    on<ProgressRunningEvent>(onProgressRunningEvent);
    on<ProgressCompletedEvent>(onProgressCompletedEvent);
    on<ErrorEvent>(onErrorEvent);
  }

  onInitialEvent(InitialEvent event,Emitter<AppState> emit){
    navigate();
    emit(InitialState());
  }
  onProgressRunningEvent(ProgressRunningEvent event,Emitter<AppState> emit){}
  onProgressCompletedEvent(ProgressCompletedEvent event,Emitter<AppState> emit){}
  onErrorEvent(ErrorEvent event,Emitter<AppState> emit){}

  navigate(){
    Future.delayed(const Duration(seconds: 3),(){});
  }

}