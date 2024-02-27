import 'package:flutter/material.dart';
import 'package:mvvmstructure/provider/counter_provider.dart';
import 'package:mvvmstructure/view/homepage.dart';
import 'package:provider/provider.dart';
import 'di_container.dart' as di;

void main() async {
  await di.init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>di.sl<CounterProvider>())
   
  ],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(),
    );
  }
}


