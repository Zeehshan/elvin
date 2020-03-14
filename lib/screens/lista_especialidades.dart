import 'package:flutter/material.dart';

class ListaEspecialidades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Especialidades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
            title: Text('Especialidades Medicas'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  // backing data
  final especialidadesmedicas = [
    'Alergólogo',
    'Anestesiólogo',
    'Angiólogo',
    'Audiólogo Clinico',
    'Cardiólogo',
    'Cirujano',
    'Cirujano Bariátrico',
    'Cirujano Cardiovascular',
    'Cirujano Craneofacial',
    'Cirujano de Mano',
    'Cirujano Estético',
    'Cirujano General',
    'Cirujano Laparoscópico',
    'Cirujano Maxilofacial',
    'Cirujano Oftalmólogo',
    'Cirujano Oncólogo',
    'Cirujano Pediátrico',
    'Cirujano Plástico',
    'Cirujano Vascular',
    'Citólogo',
    'Cosmeatría',
    'Dermatólogo',
    'Diabetólogo',
    'Emergencista',
    'Endocrinólogo',
    'Endodoncista',
    'Endoscopista',
    'Epidemiólogo',
    'Estomatólogo',
    'Fisiatra',
    'Gastroenterólogo',
    'Geriatra',
    'Gerontólogo',
    'Ginecólogo',
    'Hematólogo',
    'Hepatólogo',
    'Implantólogo',
    'Infectólogo',
    'Inmunólogo',
    'Intensivista',
    'Internista',
    'Medicina del Sueño',
    'Medicina Estética',
    'Medicina Física y Rehabilitación',
    'Medicina Interna',
    'Médico Familiar',
    'Médico General',
    'Nefrólogo',
    'Neumólogo',
    'Neurocirujano',
    'Neurocirujano Endovascular',
    'Neurólogo',
    'Nutricionista',
    'Nutriólogo Clínico',
    'Obstetra',
    'Odontólogo',
    'Odontopediatra',
    'Oftalmólogo',
    'Oncólogo',
    'Ortodoncista',
    'Ortopeda',
    'Otorrinolaringólogo',
    'Otras Especialidades',
    'Patólogo',
    'Pediatra',
    'Pediatra Cardiólogo',
    'Pediatra Gastroenterólogo',
    'Pediatra Neonatólogo',
    'Pediatra Neumólogo',
    'Pediatra Perinatólogo',
    'Periodoncista',
    'Podólogo',
    'Proctólogo',
    'Psicólogo',
    'Psiquiatra',
    'Radiólogo',
    'Radiooncólogo',
    'Radioterapista',
    'Rehabilitador Bucal',
    'Reumatólogo',
    'Sexólogo',
    'Sonografista',
    'Terapeuta',
    'Terapeuta de Parejas',
    'Transplantista Renal',
    'Tratamiento del Dolor',
    'Traumatólogo',
    'Urólogo',
    'Veterinario',
  ];

  return ListView.builder(
    itemCount: especialidadesmedicas.length,
    itemBuilder: (context, index) {
      return Card(child: ListTile(
        title: Text(especialidadesmedicas[index]),
        onTap: (){
        },
      ),
      );
    },
  );
}
