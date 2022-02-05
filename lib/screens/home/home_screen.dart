import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              Text(
                "193/42/4 Street No.6 - Binh Hung Hoa B Ward - Binh Tan District - Ho Chi Minh City",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Notification.svg")),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const Text(
                "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(),
              ),
              const Categories(),
              const SizedBox(height: defaultPadding),
              const NewArrival(),
              const SizedBox(height: defaultPadding),
              const Popular(),
            ],
          ),
        ),
      ),
    );
  }
}












