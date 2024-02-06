import 'package:first_app/App/view/dashboard/dashboard_widget/cardWidget.dart';
import 'package:first_app/App/view/dashboard/dashboard_widget/servicesWidget.dart';
import 'package:flutter/material.dart';

import 'dashboard_widget/appBarWidget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true, // Ensure body extends behind the app bar
        appBar: AppBarWidget(),
        
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                CardWidget(),
                SizedBox(height: 20),
                GridViewServiceWidget(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
