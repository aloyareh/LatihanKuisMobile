import 'package:animal_app/models/animal.dart';
import 'package:flutter/material.dart';

class AnimalDetail extends StatelessWidget {
  final Animal animal;

  const AnimalDetail({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: Text(animal.name),
      ),
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
              "Animal Detail",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Row(
              children: [
                Card(
                  color: Color(0xFFD7CCC8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Tipe: ${animal.type}"),
                  ),
                ),

                Card(
                  color: Color(0xFFD7CCC8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Berat: ${animal.weight} kg"),
                  ),
                ),

                Card(
                  color: Color(0xFFD7CCC8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Tinggi: ${animal.height} cm"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              "Habitat",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Wrap(
              spacing: 8,
              children: animal.habitat.map((habitat) {
                return Card(
                  color: Color(0xFFD7CCC8),
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
                  color: Color(0xFFD7CCC8),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),

                child: const Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
