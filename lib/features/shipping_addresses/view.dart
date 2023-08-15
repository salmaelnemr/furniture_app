import 'package:flutter/material.dart';
import 'package:furniture_app/core/app_colors/app_colors.dart';
import 'package:furniture_app/core/utils.dart';
import 'package:furniture_app/widgets/app_app_bar.dart';
import 'package:furniture_app/widgets/furniture/category_checked_box.dart';
import 'package:furniture_app/features/shipping_addresses/controller.dart';

class ShippingAddressesView extends StatefulWidget {
  const ShippingAddressesView({super.key});

  @override
  State<ShippingAddressesView> createState() => _ShippingAddressesViewState();
}

class _ShippingAddressesViewState extends State<ShippingAddressesView> {

  ShippingAddressesController controller = ShippingAddressesController();

  @override
  void initState(){
    controller.selectedCard = controller.cards.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Shipping address',
        leading: Image.asset(Utils.getPmgAssetPath('back')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: controller.cards.length,
                    itemBuilder: (context, index){
                      final card = controller.cards[index];
                      return CategoryCheckedBox(
                        isNotificationsEnabled: card == controller.selectedCard,
                        onTap: () {
                          controller.selectCard(card);
                          setState(() {});
                        },
                        title1: card.title1,
                        title2: card.title2,
                        title3: card.title3,
                      );
                    },
                ),
            ),
            SizedBox(height: 42),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  //borderRadius: BorderRadius.circular(30),
                  onTap: (){},
                  child: Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add,
                      color: AppColors.black,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
