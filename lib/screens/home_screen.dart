//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../utils/colors.dart';
//  //  //   ///

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Home Screen - Temporary')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
            child: Row(
              children: [
                Row(
                  children: <Widget>[
                    Image.asset('images/logo.png', height: 70),
                    Text(
                      'DataMINER',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kPrimaryTextColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: <Widget>[
                    menuItems('HOME'),
                    menuItems('CARRER'),
                    menuItems('JOBS'),
                    menuItems('CONTACT'),
                    menuItems('ABOUT US'),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('images/background.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 190),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'How to become ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: kSecondaryTextColor,
                          ),
                        ),
                        Text(
                          'A MINING\nENGINEER',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                            color: kPrimaryTextColor,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nVivamus quis sapien at risus tempus laoreet. Cras nec\nest enim. Proin quis est tincidunt, dignissim purus vitae,\nsemper nisl. Donec nec neque suscipit diam aliquet\nposuere at non ex. Suspendisse suscipit molestie.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: kPrimaryTextColor.withOpacity(0.8),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  kGradient1,
                                  kGradient2,
                                ],
                              ),
                            ),
                            child: const Text(
                              "Read more",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kButtonColor,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Text(
        // 'HOME',
        name,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: kPrimaryTextColor,
        ),
      ),
    );
  }
}
