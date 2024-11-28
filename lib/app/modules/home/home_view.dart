import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_todo/app/modules/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: controller.addChecklist,
              child: Text('Tambah'),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount:
                      controller.listData.length, // Jumlah item dalam list
                  itemBuilder: (context, i) {
                    final data = controller.listData[i];
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(data.name),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
