import 'package:flutter/material.dart';
import 'package:shopping/Register/view/register.dart';
import 'package:shopping/dashboard/dashboard.dart';
import 'package:shopping/login/view/forgot.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const ListTile(
                  title: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 50, color: Colors.blue),
                  ),
                  subtitle: Text(
                    'please login',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'email',
                            hintText: 'email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [],
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Forget())));
                  },
                  child: const Text('Forgot Password'),
                ),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: const Text('Sign up'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
                const Padding(padding: EdgeInsets.all(15), child: Text('OR')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.image),
                    ),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.facebook),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account'),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      child: const Text(
                        'Register',
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }
}
