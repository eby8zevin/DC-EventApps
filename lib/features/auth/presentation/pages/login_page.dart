import 'dart:developer';

import 'package:event_app/common/utils/palette.dart';
import 'package:event_app/common/utils/typography.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final obsecure = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    log('refresh page');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/logo.png',
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: emailController,
                          style: MyTypography.body,
                          decoration: InputDecoration(
                            label: Text(
                              'Email',
                              style: MyTypography.body,
                            ),
                            hintText: 'Silahkan tulis email',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Palette.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Palette.grey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ValueListenableBuilder(
                          valueListenable: obsecure,
                          builder: (context, _, __) => TextField(
                            controller: passwordController,
                            style: MyTypography.body,
                            obscureText: obsecure.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  obsecure.value = !obsecure.value;
                                }, 
                                icon: Icon(
                                  !obsecure.value 
                                  ? Icons.visibility 
                                  : Icons.visibility_off,
                                ),
                              ),
                              label: Text(
                                'Password',
                                style: MyTypography.body,
                              ),
                              hintText: 'Silahkan tulis password',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Palette.grey,
                                )),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Palette.grey,
                                )),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {}, 
                            child: Text(
                              'Forgot password ?',
                              style: MyTypography.title.copyWith(
                                color: Palette.primary,
                              ),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Palette.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                              color: Palette.primary,
                            ),
                            backgroundColor: Colors.white,
                            minimumSize: const Size(
                              double.infinity,
                              50,
                            ),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            'Login',
                            style: MyTypography.title.copyWith(
                              color: Palette.primary,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Belum Punya Akun ?',
                              style: MyTypography.title.copyWith(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Daftar Sekarang',
                                style: MyTypography.title.copyWith(
                                  color: Palette.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}