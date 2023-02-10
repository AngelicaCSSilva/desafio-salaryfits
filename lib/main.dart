import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/details_binding.dart';
import 'package:salaryfits_test/details/details_page.dart';
import 'package:salaryfits_test/home/home_bindings.dart';
import 'package:salaryfits_test/home/home_page.dart';

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
