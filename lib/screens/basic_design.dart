import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/landscape.jpg')),

          //titulo
          const Title(),

          //button section
          const ButtonSection(),

          //Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('Cupidatat exercitation officia quis sint duis nulla culpa ipsum aliquip ipsum ea nisi. Culpa sit elit in dolore nulla ipsum do ad. Nisi est sunt labore deserunt officia aute deserunt id est. Mollit ex in cillum ex veniam.')
            ),
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black26),),
              ],
            ),
      
            Expanded(child: Container()),
      
            const Icon(Icons.star, color: Colors.red,),
            const Text('41')
          ],
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CustomButton(icon: Icons.call, text: 'CALL',),
        CustomButton(icon: Icons.map_sharp, text: 'ROUTE',),
        CustomButton(icon: Icons.share, text: 'SHARE',),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue,),
        Text(text, style: const TextStyle(color: Colors.blue),),
      ],
    );
  }
}