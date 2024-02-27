import 'package:get_it/get_it.dart';
import 'package:mvvmstructure/provider/counter_provider.dart';

final sl=GetIt.instance;

Future<void> init() async{
  sl.registerLazySingleton(() => CounterProvider());

}