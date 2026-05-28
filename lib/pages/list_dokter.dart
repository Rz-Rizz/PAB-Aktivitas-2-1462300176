import 'package:flutter/material.dart';

import '../models/dokter.dart';
import 'detail_dokter.dart';

class ListDokterPage extends StatelessWidget {
  const ListDokterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 25, 24, 24),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 150,
                color: Colors.grey.shade100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/healthub.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.medical_information_rounded,
                            size: 70,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 14, 12, 12),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Stack(
                          children: [
                            Text(
                              'HealthHub:\nYour health, our priority',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.15,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color = const Color(0xFF1A1A1A),
                              ),
                            ),
                            const Text(
                              'HealthHub:\nYour health, our priority',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ...doctors.map((doctor) => DoctorCategoryCard(doctor: doctor)),
          ],
        ),
      ),
    );
  }
}

class DoctorCategoryCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCategoryCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailDokterPage(doctor: doctor),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: doctor.spesialis == 'Dokter Gigi'
                      ? const Center(
                          child: Text(
                            '\u{1F9B7}',
                            style: TextStyle(fontSize: 22),
                          ),
                        )
                      : Icon(doctor.icon, color: Colors.white, size: 24),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    doctor.spesialis,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
