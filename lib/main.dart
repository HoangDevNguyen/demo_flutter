import 'package:flutter/material.dart';
import 'ForgotPass.dart';
import 'widgets/pass_field.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyApp(),
      )
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey,
        ),
        Positioned(
          top: 70,
          left: 15,
          right: 15,
          bottom: 20,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        Positioned(
          top: 90,
          left: 30,
          right: 30,
          bottom: 25,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: Image(image: AssetImage('assets/images/logo.png'),),
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                  Container(
                      child:
                      const Text(
                        'Đăng nhập',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      )
                  ),
                  const SizedBox(height: 40,),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text('Tài khoản', style: TextStyle(fontSize: 14),),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red),),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                        hintText: 'Tài khoản',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text('Mật khẩu', style: TextStyle(fontSize: 14),),
                                      Text('*', style: TextStyle(fontSize: 14, color: Colors.red),),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                    child: PasswordField(
                                      hintText: 'Nhập mật khẩu',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            child: TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ForgotPassScreen()),
                                );
                              },
                              style: TextButton.styleFrom(
                                alignment: Alignment.centerRight,
                              ),
                              child: const Text(
                                'Quên mật khẩu?',
                                style: TextStyle(color: Colors.blue,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: const Text('Đăng nhập'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}