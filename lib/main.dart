import 'package:flutter/material.dart';
import 'package:panucci_delivery/screens/home.dart';
import 'package:panucci_delivery/store/cart_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const PanucciDelivery());
}

class PanucciDelivery extends StatelessWidget {
const PanucciDelivery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartStore())
      ],
      child: MaterialApp(
        theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 83, 83), ), useMaterial3: true),
        home: Home(),
      ),
    );
  }
}
