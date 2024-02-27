import 'package:flutter/material.dart';
import 'package:mvvmstructure/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final cp = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider Example"),
      ),
      body: Center(child: Text('${cp.counter}',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.brown,fontWeight: FontWeight.w900))),
      floatingActionButton: FloatingActionButton(onPressed: (){cp.incrementCounter();},
    tooltip: 'Increment',
     child: const Icon(Icons.add),
    ));
      // Consumer<CounterProvider>(
      //   builder: (context, counterProvider, child) { return Text('${counterProvider.counter}'); },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    // This trailing comma makes auto-formatting nicer for build methods.;
  }
}