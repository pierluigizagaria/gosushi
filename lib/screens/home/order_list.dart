import 'package:allyoucaneattogether/models/group.dart';
import 'package:flutter/material.dart';
import 'package:allyoucaneattogether/screens/home/order_tile.dart';
import 'package:provider/provider.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _orders = Provider.of<Group?>(context)?.orders ?? [];

    return ListView.builder(
      itemCount: _orders.length,
      itemBuilder: (context, index) {
        return OrderTile(order: _orders[index]);
      },
    );
  }
}
