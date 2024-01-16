import 'package:flutter/material.dart';
import 'package:height_width_changing/controller/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final providerContainer = Provider.of<ContainerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('H & W Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ContainerProvider>(
              builder: (context, value, child) {
                return Container(
                  color: value.resize ? Colors.amber : Colors.green,
                  child: value.resize
                      ? Center(child: Text('Hello'))
                      : Center(child: Text('World')),
                  height: value.resize ? 200 : 100,
                  width: value.resize ? 200 : 100,
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  providerContainer.containerSize();
                },
                child: const Text('Click'))
          ],
        ),
      ),
    );
  }
}
