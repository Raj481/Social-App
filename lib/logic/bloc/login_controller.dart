
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:socialapp/views/home/home_screen.dart';
import 'package:socialapp/views/register/register_screen.dart';


class LoginController extends Bloc {

  late TextEditingController mobileNumberController;
  late TextEditingController passwordController;

  LoginController(super.initialState);

  onSubmitTap(){}
  onRegisterNowTap(){}

  init(){
    mobileNumberController = TextEditingController();
    passwordController = TextEditingController();
  }

  closeController(){
    mobileNumberController.dispose();
    passwordController.dispose();
  }


}