import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'login_state.dart';
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool ispassword = false;
  bool agreement = false;
  void PrefIcon(){
    ispassword = !ispassword;
  }
  void Checkbox({required bool value}){
    agreement = value;
  }

}
