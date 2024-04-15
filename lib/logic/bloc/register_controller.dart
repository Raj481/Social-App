
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


class RegisterController extends Bloc {

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController mobileNumberController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  RegisterController(super.initialState);
  onSubmitTap(){
   // Get.to(const HomeScreen());
  }

  onBackTap() {

  }

  init(){
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    mobileNumberController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  closeController(){
    firstNameController.dispose();
    lastNameController.dispose();
    mobileNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

}