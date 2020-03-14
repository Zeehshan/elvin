
import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String provincia;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.provincia,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/jaragua_square_600.jpg',
    name: 'Hotel Jaragua',
    type: 'Juramentación Sector Externo',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
  ),
  Activity(
    imageUrl: 'assets/images/altarpatria_square_600.jpg',
    name: 'Altar de la Patria',
    type: 'Ofrenda Floral',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
  ),
  Activity(
    imageUrl: 'assets/images/plazabandera_square_600.jpg',
    name: 'Plaza de la Bandera',
    type: 'Cierre de Campaña',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/distrito_nacional_600.jpg',
    city: 'Distrito Nacional',
    provincia: 'Provincia Santo Domingo',
    description: 'Capital primada de america.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/santo_domingo_este.jpg',
    city: 'Santo Domingo Este',
    provincia: 'Provincia Santo Domingo',
    description: 'Perla Oriental del Gran Santo Domingo',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/santo_domingo_norte.jpeg',
    city: 'Santo Domingo Norte',
    provincia: 'Provincia Santo Domingo',
    description: 'Pintoresca puerta norte de la ciudad primada',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/santo_domingo_oeste.jpg',
    city: 'Santo Domingo Oeste',
    provincia: 'Provincia Santo Domingo',
    description: 'Visite el parís del Caribe',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/santiago.jpg',
    city: 'Santiago',
    provincia: 'Provincia Santiago',
    description: 'Capital del Cibao, de los 30 caballeros',
    activities: activities,
  ),
];