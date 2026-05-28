import 'package:flutter/material.dart';

class Doctor {
  final String spesialis;
  final String nama;
  final String subSpesialis;
  final String jadwal;
  final String bio;
  final String photoAsset;
  final IconData icon;

  const Doctor({
    required this.spesialis,
    required this.nama,
    required this.subSpesialis,
    required this.jadwal,
    required this.bio,
    required this.photoAsset,
    required this.icon,
  });
}

const List<Doctor> doctors = [
  Doctor(
    spesialis: 'Dokter Umum',
    nama: 'dr. Bima Prasetyo',
    subSpesialis: 'Dokter Umum',
    jadwal: 'Senin - Jumat, 09.00 - 17.00',
    bio:
        'Dokter umum dengan pengalaman dalam pemeriksaan kesehatan, konsultasi medis, penanganan keluhan ringan, dan perawatan dasar pasien.',
    photoAsset: 'assets/images/DokterUmum.png',
    icon: Icons.medical_services,
  ),
  Doctor(
    spesialis: 'Dokter Gigi',
    nama: 'drg. Nadia Putri',
    subSpesialis: 'Dokter Gigi',
    jadwal: 'Senin - Sabtu, 08.00 - 15.00',
    bio:
        'Dokter gigi yang berfokus pada pemeriksaan gigi, perawatan mulut, pembersihan karang gigi, dan konsultasi kesehatan gigi keluarga.',
    photoAsset: 'assets/images/DokterGigi.png',
    icon: Icons.medical_services,
  ),
  Doctor(
    spesialis: 'Dokter Anak',
    nama: 'dr. Nabilla Azahra',
    subSpesialis: 'Dokter Anak',
    jadwal: 'Selasa - Sabtu, 10.00 - 16.00',
    bio:
        'Dokter anak dengan pengalaman menangani pemeriksaan tumbuh kembang, imunisasi, dan keluhan medis umum pada anak.',
    photoAsset: 'assets/images/DokterAnak.png',
    icon: Icons.child_care,
  ),
  Doctor(
    spesialis: 'Dokter Hewan',
    nama: 'drh. Ardi Santoso',
    subSpesialis: 'Dokter Hewan',
    jadwal: 'Rabu - Minggu, 09.00 - 14.00',
    bio:
        'Dokter hewan yang melayani pemeriksaan kesehatan, vaksinasi, konsultasi nutrisi, serta penanganan awal untuk hewan peliharaan.',
    photoAsset: 'assets/images/DokterHewan.png',
    icon: Icons.pets,
  ),
];
