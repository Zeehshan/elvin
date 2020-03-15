
class Especialidad {
  String nombre;
  List<Doctor> doctores;

  Especialidad({
    this.nombre, 
    this.doctores,
  });
}

class Doctor {
  String imageUrl;
  String nombre;
  String especialidad;
  String clinica;
  String direccion;
  String ciudad;
  String telefono;
  String seguroUrl;
  double lat;
  double lng;

  Doctor({
    this.imageUrl,
    this.nombre,
    this.especialidad,
    this.clinica,
    this.direccion,
    this.ciudad,
    this.telefono,
    this.seguroUrl,
    this.lat,
    this.lng
    });
}

List<Doctor> doctores = [
  Doctor(
    imageUrl: 'assets/images/dr_1.jpg',
    nombre: 'Dra. Sandra Perez',
    especialidad: 'Alergólogo',
    clinica: 'Centro Medico Real',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_1.jpg',
    lat:37.0902,
    lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_2.jpg',
    nombre: 'Dra. Mariana Gomez',
    especialidad: 'Alergólogo',
    clinica: 'Clínica Altagracia',
    direccion: 'Av Sabana Larga 90',
    ciudad: 'Santo Domingo',
    telefono: '(809) 699-3494',
    seguroUrl: 'assets/images/seguro_2.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_6.jpg',
    nombre: 'Dra. Yesenia Tavares',
    especialidad: 'Anestesiólogo',
    clinica: 'Clínica Abreu',
    direccion: 'Calle Arzobispo Portes 853',
    ciudad: 'Santo Domingo',
    telefono: '(809) 688-4411',
    seguroUrl: 'assets/images/seguro_2.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_3.jpg',
    nombre: 'Dra. Mireya Carrasco',
    especialidad: 'Anestesiólogo',
    clinica: 'Centro Médico Dominicano',
    direccion: 'Calle Luis F. Thomen 456',
    ciudad: 'Santo Domingo',
    telefono: '(809) 531-2800',
    seguroUrl: 'assets/images/seguro_3.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_9.jpg',
    nombre: 'Dr. Luis Ricart',
    especialidad: 'Angiólogo',
    clinica: 'Centro Medico Dominicano',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_3.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_10.jpg',
    nombre: 'Dr. Tomás Rodriguez',
    especialidad: 'Angiólogo',
    clinica: 'Clinica Dr. Abel Gonzalez',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_1.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_15.jpg',
    nombre: 'Dr. Luis Ricart',
    especialidad: 'Audiólogo Clinico',
    clinica: 'Centro Medico Dominicano',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_3.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_16.jpg',
    nombre: 'Dr. Tomás Rodriguez',
    especialidad: 'Audiólogo Clinico',
    clinica: 'Clinica Dr. Abel Gonzalez',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_1.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_19.jpg',
    nombre: 'Dr. Luis Ricart',
    especialidad: 'Cardiólogo',
    clinica: 'Centro Medico Dominicano',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_3.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
  Doctor(
    imageUrl: 'assets/images/dr_20.jpg',
    nombre: 'Dr. Tomás Rodriguez',
    especialidad: 'Cardiólogo',
    clinica: 'Clinica Dr. Abel Gonzalez',
    direccion: 'Av. Rómulo Betancourt 515',
    ciudad: 'Santo Domingo',
    telefono: '(809) 537-3940',
    seguroUrl: 'assets/images/seguro_1.jpg',
      lat:37.0902,
      lng: 95.7129
  ),
];

List<Especialidad> especialidades = [
  Especialidad(
    nombre: 'Alergólogo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Anestesiólogo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Angiólogo',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Audiólogo Clinico',
    doctores: doctores,
  ),
  Especialidad(
    nombre: 'Cardiólogo',
    doctores: doctores,
  ),
];