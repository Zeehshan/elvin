
import 'doctor_modelo.dart';

class Especialidad {
  String nombre;
  List<Doctor> doctores;

  Especialidad({
    this.nombre, 
    this.doctores,
  });
}

List<Doctor> doctores = [
  Doctor(
    imageUrl: 'assets/images/dr_1.jpg',
    nombre: 'Dra. Sandra Perez',
    especialidad: 'Cardiologo',
    clinica: 'Clinica Dr. Abreu',
    seguroUrl: 'assets/images/seguro_1.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_2.jpg',
    nombre: 'Dra. Mariana Gomez',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico UCE',
    seguroUrl: 'assets/images/seguro_2.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_4.jpg',
    nombre: 'Dr. Miguel Rodriguez',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico Real',
    seguroUrl: 'assets/images/seguro_3.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_5.jpg',
    nombre: 'Dr. Roberto Marte',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico Real',
    seguroUrl: 'assets/images/seguro_1.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_6.jpg',
    nombre: 'Dra. Yesenia Tavares',
    especialidad: 'Cardiologo',
    clinica: 'Clinica Altagracia',
    seguroUrl: 'assets/images/seguro_2.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_3.jpg',
    nombre: 'Dra. Mireya Carrasco',
    especialidad: 'Cardiologo',
    clinica: 'Clinica Universal',
    seguroUrl: 'assets/images/seguro_3.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_7.jpg',
    nombre: 'Dr. Francisco Vasquez',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico UCE',
    seguroUrl: 'assets/images/seguro_1.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_8.jpg',
    nombre: 'Dr. Miguel Troncoso',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico Dominicano',
    seguroUrl: 'assets/images/seguro_2.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_9.jpg',
    nombre: 'Dr. Luis Ricart',
    especialidad: 'Cardiologo',
    clinica: 'Centro Medico Dominicano',
    seguroUrl: 'assets/images/seguro_3.jpg',
  ),
  Doctor(
    imageUrl: 'assets/images/dr_10.jpg',
    nombre: 'Dr. Tomás Rodriguez',
    especialidad: 'Cardiologo',
    clinica: 'Clinica Dr. Abel Gonzalez',
    seguroUrl: 'assets/images/seguro_1.jpg',
  ),
  ];

  List<Doctor> doctores1 = [
  Doctor(
    imageUrl: 'assets/images/jaragua_square_600.jpg',
    nombre: 'Ana Mendez',
    especialidad: 'Audiologo Clinico',
  ),
  Doctor(
    imageUrl: 'assets/images/jaragua_square_600.jpg',
    nombre: 'Manuel Tavares',
    especialidad: 'Cardiologo',
  ),
  ];

List<Especialidad> especialidades = [
  Especialidad(
    nombre: 'Alergologo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Anestesiologo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Angiologo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Audiologo Clinico',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cardiologo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Bariátrico',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Cardiovascular',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Craneofacial',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano de Mano',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Estético',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano General',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Laparoscópico',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Maxilofacial',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cirujano Oftalmólogo',
    doctores: doctores,
  ),
];