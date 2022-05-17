import 'package:bloc/bloc.dart';
import 'package:exam_last/services/service.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int items = 0;
  List section = ["dasturlashes", "dizayns", "smms", "tils"];
  void addCount(index) {
    items = index;
    Service.path = section[index];
    emit(GetState());
  }
}
