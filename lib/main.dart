import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jemmart Gumban', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color.fromRGBO(14, 4, 66, 0.612),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(16.0),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('lib/assets/images/GUMBAN_JEMMART.jpeg'),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Jemmart Gumban',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 0),

              const ProfileInfoRow(label: 'Motto:                    ', data: 'Time is Gold.'),
              const ProfileInfoRow(label: 'Birthdate:              ', data: 'September 08, 2004'),
              const ProfileInfoRow(label: 'Address:                ', data: 'Ingore, La Paz, Iloilo City, Philippines'),
              const ProfileInfoRow(label: 'Specialization:      ', data: 'Networking in Telecommunications Management'),
              const ProfileInfoRow(label: 'Course:                  ', data: 'Bachelor of Science in Information Technology'),
              const SizedBox(height: 10.0),

              Container(
                color: const Color.fromARGB(255, 255, 255, 255), // Background color
                padding: const EdgeInsets.all(16.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'I lived with my family in La Paz, Iloilo City. At the age of 13, I took the courage to travel alone to Bacolod City. I lived there with my aunts and uncles who became my guardian. I spent the rest of my high school there and decided to come back here in Iloilo when I stepped in senior high school. Now, I\'m a third year BSIT student here at West Visayas State University. Always aiming for something great and planning ahead for the future.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String data;

  const ProfileInfoRow({super.key, required this.label, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(data),
            ],
          ),
        ),
        const SizedBox(height: 0.5),
      ],
    );
  }
}