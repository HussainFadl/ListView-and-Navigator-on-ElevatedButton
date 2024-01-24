import 'package:flutter/material.dart';
import 'package:listviewapp/chatView.dart';
import 'package:listviewapp/colors.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool isNotvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('Assets/messages1.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'LogIn to your Account',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                label: const Text('Email'),
                prefixIcon: Icon(
                  Icons.email,
                  color: AppColors.primaryColor,
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(),
              obscureText: isNotvisible,
              decoration: InputDecoration(
                hintText: 'Password',
                label: const Text('Password'),
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppColors.primaryColor,
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNotvisible = !isNotvisible;
                      });
                    },
                    icon: Icon((isNotvisible)
                        ? Icons.remove_red_eye
                        : Icons.visibility_off)),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.whitecolor),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => chatView()));
                  },
                  child: const Text('Press here')),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text('I have not an account'),
                // TextButton(onPressed: (){
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> RegisterView))

                // }, child: )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
