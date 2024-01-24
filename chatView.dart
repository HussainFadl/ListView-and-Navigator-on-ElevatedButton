import 'package:flutter/material.dart';
import 'package:listviewapp/colors.dart';
import 'package:listviewapp/login_view.dart';
import 'package:listviewapp/user.dart';

class chatView extends StatelessWidget {
  chatView({super.key});
  List<UserModel> user = [
    UserModel(
        name: 'Husaain',
        image: 'Assets/hussain.png',
        message: 'Do your best 👍🏽',
        date: '10:00'),
    UserModel(
        name: 'Husaain',
        image: 'Assets/hussain.png',
        message: 'Do your best 👍🏽',
        date: '10:00'),
    UserModel(
        name: 'Ahmed',
        image: 'Assets/hussain.png',
        message: 'Thuersday Task Handover 💪🏻',
        date: '10:00'),
    UserModel(
        name: 'Mohamed',
        image: 'Assets/hussain.png',
        message: 'Please give me extension 🙌🏼',
        date: '10:00'),
    UserModel(
        name: 'Islam',
        image: 'Assets/hussain.png',
        message: 'Have a good day 👊🏻',
        date: '10:00'),
    UserModel(
        name: 'Islam',
        image: 'Assets/Flutter.png',
        message: 'Have a good day 👊🏻',
        date: '10:00'),
    UserModel(
        name: 'Islam',
        image: 'Assets/hussain.png',
        message: 'Have a good day 👊🏻',
        date: '10:00'),
    UserModel(
        name: 'Fadlallah',
        image: 'Assets/hussain.png',
        message: 'Looool 😄',
        date: '10:00'),
    UserModel(
        name: 'Lamia',
        image: 'Assets/hussain.png',
        message: 'Happy new year ',
        date: '10:00'),
    UserModel(
        name: 'Hassan',
        image: 'Assets/hussain.png',
        message: 'Congratulations 🏆',
        date: '10:00'),
    UserModel(
        name: 'Adullah',
        image: 'Assets/hussain.png',
        message: 'Happy birth day 🍰',
        date: '10:00'),
    UserModel(
        name: 'Ismael',
        image: 'Assets/hussain.png',
        message: 'Going Sketing ⛸',
        date: '10:00'),
    UserModel(
        name: 'Ismael',
        image: 'Assets/hussain.png',
        message: 'Tired 😴',
        date: '10:00'),
    UserModel(
        name: 'Ismael',
        image: 'Assets/hussain.png',
        message: 'Tired 😴',
        date: '10:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyle(color: AppColors.whitecolor),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            color: AppColors.whitecolor,
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Favorite contacts',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.whitecolor,
                      fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('Assets/hussain.png'),
                          ),
                          Text(
                            user[index].name,
                            style: TextStyle(
                                fontSize: 10, color: AppColors.whitecolor),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 5);
                    },
                    itemCount: user.length),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(20))),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      user[index].name,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(user[index].message),
                    trailing: Text(user[index].date),
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('Assets/hussain.png'),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: user.length),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogInView()));
            },
            backgroundColor: AppColors.whitecolor,
            foregroundColor: AppColors.greycolor,
            elevation: 100,

            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.arrow_circle_right_outlined),
            // style:ElevatedButton.styleFrom(),
          ),
        )
      ]),
    );
  }
}
