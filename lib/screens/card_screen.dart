import 'package:flutter/material.dart';
import 'package:practica/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10,),
          CustmosCardTipo2(imageUrl: "https://images3.alphacoders.com/135/1350069.jpeg", pieImagen: "Paquet",),
          SizedBox(height: 10,),
          CustmosCardTipo2(imageUrl: "https://lh3.googleusercontent.com/proxy/_ll_d4oFF9UyyTpARYgPZbyo_UKKIHxxTg4Pi6mZs-r9P8sQPlRHwpaQCq1wczr8bXXMtCD4qqgi3Tfx-_6GmYQorddsaKdRt6lUJmE_-QdoWvHwLv_m2kIOdvp093vkMxc", pieImagen: "Donut",),
          SizedBox(height: 10,),
          CustmosCardTipo2(imageUrl: "https://www.decorarconvinilos.com/image/catalog/Archivos/papel-pintado-o-fotomural-planeta-rojo-paisaje-espacio-ciencia-ficcionvv.jpg", pieImagen: "La rosa",),
          SizedBox(height: 10,),
          CustmosCardTipo2(imageUrl: "https://img.freepik.com/foto-gratis/paisaje-agujeros-fin-fantasia_23-2151639677.jpg"),
          SizedBox(height: 10,),
          CustmosCardTipo2(imageUrl: "https://www.sopitas.com/wp-content/uploads/2014/08/landscapes.jpg", pieImagen: "Soy experto",),
        ],
      ),
    );
  }
}


