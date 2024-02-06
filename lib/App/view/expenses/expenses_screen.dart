import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/customStyle.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Expenses", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Handle search button press
              // You can implement search functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  color: Colors.blue.shade100,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(12.0), // Adjust the radius as needed
                      topRight:
                          Radius.circular(12.0), // Adjust the radius as needed
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("From"),
                            Row(
                              children: [
                                Icon(Icons.date_range, color: Colors.blue),
                                SizedBox(width: 5),
                                Text("02/01/2024", style: expenses16),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_right, color: Colors.blue),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("To"),
                            Row(
                              children: [
                                Text("02/01/2024", style: expenses16),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.date_range,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text("Agi Hazira (Patrol)",
                                        style: expensesTitle20),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: const Text(
                                      "Pending",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(Icons.timer,
                                        color: Colors.blue, size: 20),
                                  ),
                                  Text(
                                    "02/01/2024",
                                    style: expensesTitle20.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    "Lorem Ipsum, Simply",
                                    style: expensesTitle20.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 1.0,
                                width: Get.width / 1.8,
                                color: Colors.grey,
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Cash: ",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "300.00",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width / 6),
                                    Row(
                                      children: [
                                        Text(
                                          "Cheque: ",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "--",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Lorem ipsum dolor sit amet. Rem commodi commodi ea minus quidem id incidunt omnis et perspiciatis error nam voluptas ipsam qui nisi odit. ",
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 5,
                                  style: expensesTitle20.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text("Agi Hazira (Water Bottle)",
                                        style: expensesTitle20),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: const Text(
                                      "Complete",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(Icons.timer,
                                        color: Colors.blue, size: 20),
                                  ),
                                  Text(
                                    "02/01/2024",
                                    style: expensesTitle20.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    "Lorem Ipsum, Simply",
                                    style: expensesTitle20.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 1.0,
                                width: Get.width / 1.8,
                                color: Colors.grey,
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Cash: ",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "20.00",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width / 6),
                                    Row(
                                      children: [
                                        Text(
                                          "Cheque: ",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "--",
                                          style: expensesTitle20.copyWith(
                                              fontSize: 16,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Lorem ipsum dolor sit amet. Rem commodi commodi ea minus quidem id incidunt omnis et perspiciatis error nam voluptas ipsam qui nisi odit. ",
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 5,
                                  style: expensesTitle20.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
