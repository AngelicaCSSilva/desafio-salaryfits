import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Desafio_SalaryFits/home/home_page.dart';
import 'package:Desafio_SalaryFits/details/details_binding.dart';
import 'package:Desafio_SalaryFits/details/details_page.dart';
import 'package:Desafio_SalaryFits/home/home_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
            name: '/',
            page: () => const HomePage(),
            binding: HomeBindings(),
            children: [
              GetPage(
                  name: '/post/:id',
                  page: () => const DetailsPage(),
                  binding: DetailsBinding())
            ])
      ],
    );
  }
}
