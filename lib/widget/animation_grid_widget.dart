import 'package:flutter/material.dart';

Widget animationGridWidget(List animationList) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemCount: animationList.length,
      itemBuilder: (context, index) {
        final item = animationList[index];
        final widgetItem = item["widget"];

        return Card(
          color: const Color.fromARGB(150, 30, 30, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              widgetItem is Function ? widgetItem() : widgetItem,
              const SizedBox(height: 8),
              Text(
                item["name"],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
