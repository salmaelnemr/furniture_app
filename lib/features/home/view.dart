import 'package:flutter/material.dart';
import 'package:furniture_app/widgets/app_app_bar.dart';
import '../../core/utils.dart';
import 'package:furniture_app/widgets/furniture/catagory_button.dart';
import 'package:furniture_app/widgets/furniture/product_card.dart';
import 'controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  HomeController controller = HomeController();

  @override
  void initState(){
    controller.selectedCategory = controller.categories.first;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        upperTitle: "Make Home",
        title: "Beautiful",
        leading: Image.asset(Utils.getPmgAssetPath('search')),
        trailing: Image.asset(Utils.getPmgAssetPath('shopping_bag')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 68,
              child: ListView.builder(
                  itemCount: controller.categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    final category = controller.categories[index];
                    return CategoryButton(
                      title: category.title,
                      image: category.image,
                      isSelected: controller.selectedCategory == category,
                      onTap: (){
                        controller.selectedCategory = category;
                        setState(() {

                        });
                      },
                    );
                  }
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 157 / 235,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 20,
                ),
                itemBuilder:(context, index) {
                  return ProductCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
