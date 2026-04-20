import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveFormScreen extends StatefulWidget {
  const HiveFormScreen({super.key});

  @override
  State<HiveFormScreen> createState() => _HiveFormScreenState();
}

class _HiveFormScreenState extends State<HiveFormScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();

  bool _showDataCard = false;

  Future<void> _saveData() async {
    var box = await Hive.openBox("myfile2");

    await box.add({
      'name': _nameController.text.trim(),
      'age': int.tryParse(_ageController.text.trim()) ?? 0,
      'email': _emailController.text.trim(),
      'college': _collegeController.text.trim(),
    });

    _nameController.clear();
    _ageController.clear();
    _emailController.clear();
    _collegeController.clear();

    setState(() {});

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Record Saved!")));
  }

  Widget _showData() {
    return FutureBuilder<Box>(
      future: Hive.openBox("myfile2"),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        final box = snapshot.data!;
        final keys = box.keys.toList();
        final values = box.values.toList();

        if (values.isEmpty) {
          return const Text("No records found!");
        }

        return Column(
          children: List.generate(values.length, (index) {
            final data = values[index] as Map;

            return Card(
              color: Colors.deepPurple.shade50,
              margin: const EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: GestureDetector(
                  onLongPress: () async {
                    await box.deleteAt(index);

                    setState(() {});

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Deleted Successfully")),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("👤 Name   : ${data['name'] ?? '-'}"),
                      Text("🎂 Age    : ${data['age'] ?? '-'}"),
                      Text("📧 Email  : ${data['email'] ?? '-'}"),
                      Text("🏫 College: ${data['college'] ?? '-'}"),
                      const SizedBox(height: 5),
                      const Text(
                        "👆 Long press to delete",
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hive DB - Multiple Records")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              controller: _collegeController,
              decoration: const InputDecoration(
                labelText: "College",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _saveData,
                    icon: const Icon(Icons.save),
                    label: const Text("Save"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() => _showDataCard = true);
                    },
                    icon: const Icon(Icons.visibility),
                    label: const Text("Show Data"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            if (_showDataCard) _showData(),
          ],
        ),
      ),
    );
  }
}
