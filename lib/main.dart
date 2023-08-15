import 'package:furniture_app/features/shipping_addresses/view.dart';

import 'features/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async{
 await ScreenUtil.ensureScreenSize();
 runApp(MyApp());
}

class MyApp extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     builder: (context, child){
     ScreenUtil.init(
     context,
     designSize: const Size(375, 812),
     );
     return child!;
     },
     home: ShippingAddressesView(),
   );
 }
}

