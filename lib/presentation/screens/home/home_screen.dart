import 'package:coffee_app_routes/presentation/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future singIn() async {
      showDialog(
        context: context,
        builder: (context) {
          return StreamBuilder(
              stream: Stream.periodic(
                const Duration(milliseconds: 150),
                (element) {
                  return (element * 10) / 100;
                },
              ).takeWhile((element) => element < 100),
              builder: (context, snapshot) {
                final progress = snapshot.data ?? 0;
                return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/coffee_logo.png',
                      width: 50,
                      height:50,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10,),
                    CircularProgressIndicator(
                      backgroundColor: Colors.black12,
                      value: progress,
                      strokeWidth: 2,
                      color: const Color(0xFFd3a271),
                    ),
                  ],
                ));
              });
        },
      );
      await Future.delayed(const Duration(seconds: 2));
      context.pushNamed(CoffeeShopScreen.name);
      context.pop();
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFd3a271),
      body: Container(
        padding:
            EdgeInsets.only(top: size.height * .2, bottom: size.height * .07),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/coffee_logo.png',
              width: size.width * .4,
              height: size.height * .25,
              fit: BoxFit.fill,
            ),
            const Spacer(),
            FilledButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF543a20))),
              onPressed: singIn,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                child: Text(
                  'Get started',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
