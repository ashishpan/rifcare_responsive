import 'package:flutter/material.dart';
import 'package:rifcare_responsive/rifcare_responsive.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExampleApp(),
    );
  }
}


class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RifcareResponsive(
        builder: (context, constraints){
          return Column(
            children: [
              /// Here i have used an responsive class to show you the usage
              Text(
                RifcareResponsive.isMobile(constraints)? 'Mobile Text' : 'Other Text',
              ),
            ],
          );
        },
      ),
    );
  }
}

