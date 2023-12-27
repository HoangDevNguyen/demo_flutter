import 'package:flutter/material.dart';
import 'widgets/pass_field.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  child: Image(image: AssetImage('assets/images/logo.png')),
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    Container(
                      child: const Text(
                        'Quên mật khẩu',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text('Email', style: TextStyle(fontSize: 14,),),
                            Text('*', style: TextStyle(fontSize: 14,color: Colors.red),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          child: const TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                              hintText: 'Nhập email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewPassScreen()),
                      );
                    },
                    child: const Text('Xác nhận'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewPassScreen extends StatelessWidget {
  const NewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            top: 80,
            left: 30,
            right: 30,
            bottom: 25,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: Image(image: AssetImage('assets/images/logo.png')),
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    Container(
                      child: const Text(
                        'Nhập mật khẩu mới',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Text('Mật khẩu mới', style: TextStyle(fontSize: 14),),
                                    Text('*', style: TextStyle(fontSize: 14, color: Colors.red),),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Container(
                                  child: PasswordField(
                                    hintText: 'Nhập mật khẩu mới',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Text('Xác nhận mật khẩu', style: TextStyle(fontSize: 14),),
                                    Text('*', style: TextStyle(fontSize: 14, color: Colors.red),),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Container(
                                  child: PasswordField(
                                    hintText: 'Xác nhận mật khẩu',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Text('OTP', style: TextStyle(fontSize: 14),),
                                    Text('*', style: TextStyle(fontSize: 14, color: Colors.red),),
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Container(
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                      hintText: 'Nhập mã OTP',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          child: TextButton(
                            onPressed: (){},
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerRight,
                            ),
                            child: const Text('Gửi lại'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Xác nhận'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                // Xử lý khi nút "Quay lại" được nhấn
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}