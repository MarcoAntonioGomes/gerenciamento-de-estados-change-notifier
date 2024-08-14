import 'package:flutter/material.dart';
import 'package:panucci_delivery/models/item.dart';
import 'package:panucci_delivery/store/cart_store.dart';
import 'package:panucci_delivery/store/item_store.dart';
import 'package:provider/provider.dart';

class Contador extends StatelessWidget {
  final Item item;
  Contador({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartStore = Provider.of<CartStore>(context, listen: false);
    return Consumer<ItemStore>(
      builder: (context, itemStore, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                if (itemStore.count > 0) {
                  itemStore.removeItem();
                  cartStore.removeItem(item);
                }
              },
              child: const Icon(
                Icons.remove_circle_outline,
                size: 20,
              ),
            ),
            Text(itemStore.count.toString()),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                itemStore.addItem();
                cartStore.addItem(item);
              },
              child: const Icon(
                Icons.add_circle_outline,
                size: 20,
              ),
            ),
          ],
        );
      },
    );
  }
}
