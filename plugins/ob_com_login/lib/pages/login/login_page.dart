
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ob_com_login/pages/login/login_provider.dart';
import 'package:ui_basic/ui_basic.dart';

import '../../router/login_route.dart';

class LoginPage extends ConsumerWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   int age = ref.watch(loginProvider.select((it) => it.value!.age));
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:  Column(
          children: [
            Text("LoginPage"),
            Builder(builder: (ctx){
              print("sdfdsfsdfsdfsdfdsfdsdsf....age");
              return Text("age=${age}");
            }),
            Consumer(builder: ( BuildContext context,
                WidgetRef ref,
                Widget? child,){
              int count = ref.watch(loginProvider.select((it) => it.value!.count));
              return  Text("count=${count}...${age}");
            }),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: (){
              ref.read(loginProvider.notifier).addNum();

            }, child:      Text("加1"),),


            ElevatedButton(onPressed: (){
               context.push(LoginRoute.register);

            }, child:      Text("前往注册"),)
          ],
        ),
      ),
    );
  }





}