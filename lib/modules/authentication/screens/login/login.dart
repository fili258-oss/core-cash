import 'package:core_cash/common/styles/spacing_styles.dart';
import 'package:core_cash/modules/authentication/screens/login/widgets/login_header.dart';
import 'package:core_cash/modules/home/screens/my_home.dart';
import 'package:core_cash/utils/services/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:core_cash/utils/constants/colors.dart';
import 'package:core_cash/utils/constants/image_strings.dart';
import 'package:core_cash/utils/constants/sizes.dart';
import 'package:core_cash/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService(); // 👈👀
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signIn(BuildContext context) async {
    String email = _emailController.text.trim();
    String pass = _passwordController.text.trim();

    final user = await _auth.signInWithEmailAndPassword(email, pass);

    if (user != null) {
      print('Usuario si existe');
      Get.to(const MyHome());
    } else {
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('The user / password incorrect'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and Subtitle
              const LoginHeader(),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.direct_right),
                          labelText: AppText.email,
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.password_check),
                          labelText: AppText.password,
                          suffixIcon: const Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

                      /// Remember Me and Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember me
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text(AppText.rememberMe),
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () {},
                            child: Text(AppText.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            signIn(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonPrimary
                            
                          ),
                          child: Text(AppText.signIn),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),

                    ],
                  ),
                ),
              ),

              /// Divider
              //FormDivider(dividerText: AppText.orSignInWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    
                    child: Text(
                      "Desarrollado por BtnTechnology S.A.S"
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}