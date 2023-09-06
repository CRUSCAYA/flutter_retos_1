import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        body: HeaderWidget(),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Image.network(
            'https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg',
            width: 900.0,
            height: 300.0,
          ),
          SizedBox(height: 16.0),

          // Título en negrita
          Text(
            'PROGRAMACION MOVIL',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
             
           Text(
            'programacion movil',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 16.0),
         
          Row(
            children: [
              Icon(Icons.star, size: 20.0, color: Colors.red),
              SizedBox(width: 4.0),
              Text(
                '5', // Reemplaza con el valor de tu contador
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 16.0), 

          // Opciones de Call, Route y Share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      
                    },
                  ),
                  Text('Call'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.directions),
                    onPressed: () {
                      // Lógica para obtener rutas
                    },
                  ),
                  Text('Route'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {
                    
                    },
                  ),
                  Text('Share'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0), // Espacio entre las opciones y el párrafo de texto

          // Párrafo de texto
          Text(
            'Este es un párrafo de ejemplo que puedes personalizar según tus necesidades. Aquí puedes agregar información adicional sobre el encabezado o cualquier otro contenido relevante para tu aplicación.',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
