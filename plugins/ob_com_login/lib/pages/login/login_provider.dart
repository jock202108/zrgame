import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

class LoginState {
 late int count;
 late int age;

 LoginState(this.count,this.age);
}

@riverpod
class Login extends _$Login {
  @override
  AsyncValue<LoginState> build() {
    LoginState loginState = LoginState(10,1);
    ref.onAddListener(() {

    });
    ref.onRemoveListener(() {
    });
    ref.onResume(() {

    });
     ref.onDispose(() {

     });
    ref.onCancel(() {
    });
    return AsyncValue.data(loginState);
  }

  addNum(){
    state.value!.count = state.value!.count+1;

     state  =AsyncValue.data(state.value!);

  }








}
