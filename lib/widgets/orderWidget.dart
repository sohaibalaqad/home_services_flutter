import 'package:final_project/extensions/color.dart';
import 'package:final_project/items/orderItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({Key? key}) : super(key: key);

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                '#0E4DFB'.toColor(),
                '#6FC8FB'.toColor(),
              ]
            )
          ),
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Center(
            child: Text(
              AppLocalizations.of(context)?.orders_details ??'Orders Details',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TabBar(
          controller: _tabController,
          labelColor: "#0E4DFB".toColor(),
          indicatorColor: "#0E4DFB".toColor(),
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: AppLocalizations.of(context)?.pending ??  'Pending'),
            Tab(text: AppLocalizations.of(context)?.underway ??  'Underway'),
            Tab(text: AppLocalizations.of(context)?.completed ??  'Completed'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              OrderItem(),
              OrderItem(),
              OrderItem(),
            ],
          ),
        ),
      ],
    );
  }
}
