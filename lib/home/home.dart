import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0,
              ),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.arrow_drop_down),
                    labelText: 'Search Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person, size: 30)),
              title: const Text('Number'),
              subtitle: const Text('Recent Message'),
              trailing: DateTime.now().day == 1 ? const Icon(Icons.star) : null,
            ),
          ],
        )
      ),
    );
  }
}
