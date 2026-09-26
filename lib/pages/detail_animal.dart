import 'package:animal_app/models/animal.dart';
import 'package:flutter/material.dart';

class AnimalDetail extends StatelessWidget {
  final Animal animal;

  const AnimalDetail({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(animal.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              animal.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 16),

            Text(
              animal.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            Text(
              "Tipe",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(animal.type),

            const SizedBox(height: 12),

            Text(
              "Berat",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text("${animal.weight} kg"),

            const SizedBox(height: 12),

            Text(
              "Tinggi",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text("${animal.height} cm"),

            const SizedBox(height: 12),

            Text(
              "Habitat",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Wrap(
              spacing: 8,
              children: animal.habitat.map((habitat) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(habitat),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 12),

            Text(
              "Aktivitas",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Wrap(
              spacing: 8,
              children: animal.activities.map((activity) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(activity),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
