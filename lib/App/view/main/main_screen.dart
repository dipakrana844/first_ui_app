import 'package:first_app/App/controller/bottom_bar_controller.dart';
import 'package:first_app/App/view/expenses/expenses_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard/dashboard.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final BottomBarController _controller = Get.put(BottomBarController());

  Widget _getScreen(int index) {
    // Return the appropriate screen based on the selected index
    switch (index) {
      case 0:
        return const DashboardPage();
      case 1:
        return const ExpensesScreen();
      case 2:
        return Container(
          color: Colors.orange,
          child: const Center(
            child: Text('Screen 3'),
          ),
        );
      case 3:
        return Container(
          color: Colors.green,
          child: const Center(
            child: Text('Screen 2'),
          ),
        );
      case 4:
        return Container(
          color: Colors.orange,
          child: const Center(
            child: Text('Screen 3'),
          ),
        );
      default:
        return Container();
    }
  }

  Widget _buildBottomNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: _controller.currentIndex.value,
        onTap: _controller.changeTabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[400],
        // iconSize: 30,
        items: [
          _buildNavigationBarItem("assets/icons/home.png", 'Screen 1', 0),
          _buildNavigationBarItem("assets/icons/expenses.png", 'Screen 2', 1),
          _buildNavigationBarItem(
              "assets/icons/attendances.png", 'Screen 3', 2),
          _buildNavigationBarItem("assets/icons/vehicles.png", 'Screen 4', 3),
          _buildNavigationBarItem("assets/icons/visits.png", 'Screen 5', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem(
      String iconPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        iconPath,
        height: 30,
        width: 30,
        color:
            _controller.currentIndex.value == index ? Colors.blue : Colors.grey,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => _getScreen(_controller.currentIndex.value),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }
}
