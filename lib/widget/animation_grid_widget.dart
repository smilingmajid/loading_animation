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
        return Card(
          color: const Color.fromARGB(150, 30, 30, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              animationList[index]["widget"],
              const SizedBox(height: 8),

              Text(
                animationList[index]["name"],
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
