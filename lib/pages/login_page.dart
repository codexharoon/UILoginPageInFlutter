import 'package:flutter/material.dart';
import 'package:login_page_ui/components/my_button.dart';
import 'package:login_page_ui/components/my_square_tile.dart';
import 'package:login_page_ui/components/my_text_field.dart';
import 'package:login_page_ui/images/my_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            
            // auth icon
            const Center(child: Icon(Icons.lock, size: 90,)),
      
            const SizedBox(height: 40,),
      
            // welcome text
            Text('Welcome back you\'ve been missed!',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
      
      
            const SizedBox(height: 25,),
      
            // username and password field
            Column(  
              children: [
                // username 
                MyTextField(hintText: 'Username', controller: usernameController, obscureText: false),
                
                const SizedBox(height: 15,),
      
                // password 
                MyTextField(hintText: 'Password', controller: passwordController, obscureText: true),
              ],
            ),
      
            const SizedBox(height: 10,),
      
            // forgot password text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: null,
                    child: Text('Forgot password?',
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            const SizedBox(height: 25,),
      
            // sign in button
            const MyButton(onTap: null,),
      
      
            const SizedBox(height: 50,),
      
            // or continue with text  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child:
                      Divider(thickness: 0.5,color: Colors.grey[500],),
                  ),
            
                  Text('or continue with',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
            
                  Expanded(
                    child:
                      Divider(thickness: 0.5,color: Colors.grey[500],),
                  ),
                ],
              ),
            ),
      
      
            const SizedBox(height: 50,),
      
            // google and apple icons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ggogle img
                MySquareTile(imgPath: MyImages.google, onTap: null,),
      
                SizedBox(width: 20,),
      
                // apple img
                MySquareTile(imgPath: MyImages.apple, onTap: null,),
              ],
            ),
      
      
            const SizedBox(height: 50,),
      
            // not a member text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
      
                const SizedBox(width: 3,),
      
                GestureDetector(
                  onTap: null,
                  child: const Text('Register now',
                    style: TextStyle(  
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}