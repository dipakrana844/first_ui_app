import 'dart:convert';

import 'package:first_app/App/core/color.dart';
import 'package:first_app/App/core/extension.dart';
import 'package:first_app/App/model/dashboard/servicesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/customStyle.dart';

class ServiceWidget extends StatelessWidget {
  final ServiceModel serviceData;
  const ServiceWidget({required this.serviceData, Key? key}) : super(key: key);

  final double circleBorderWidth = 8.0;
  final double circleRadius = 70.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: circleRadius / 2.0),
            child: Container(
              height: 140.0,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(serviceData.name, style: noteCardTitle18),
                  Text(serviceData.level,
                      style: noteCardSubTitle30.copyWith(
                        color: serviceData.color.toColor(),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 2.0, bottom: 2.0),
              child: Container(
                decoration: BoxDecoration(
                  color: serviceData.bimColor.toColor(),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/icons/${serviceData.image}.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: circleRadius,
            height: circleRadius,
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: appBackgroundColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(circleBorderWidth),
              child: DecoratedBox(
                decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: serviceData.color.toColor(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/${serviceData.image}.png",
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GridViewServiceWidget extends StatefulWidget {
  const GridViewServiceWidget({super.key});

  @override
  State<GridViewServiceWidget> createState() => _GridViewServiceWidgetState();
}

class _GridViewServiceWidgetState extends State<GridViewServiceWidget> {
  RxList<ServiceModel>? serviceData = <ServiceModel>[].obs;
  RxBool isService = false.obs;

  @override
  void initState() {
    super.initState();
    convertJsonToModel();
  }

  convertJsonToModel() async {
    String jsonString = await rootBundle.loadString('assets/service.json');
    List<dynamic> jsonData = json.decode(jsonString);
    List<ServiceModel> serviceModel =
        jsonData.map((e) => ServiceModel.fromJson(e)).toList();
    serviceData = serviceModel.obs;
    debugPrint("convertJsonToModel -> $serviceData");
    isService.value = true;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (isService.value) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: serviceData!.length,
            physics: const ClampingScrollPhysics(),
        shrinkWrap: true,    
        scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return ServiceWidget(serviceData: serviceData![index]);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
