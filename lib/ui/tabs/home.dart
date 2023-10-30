import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var images = [
      GestureDetector(
        onTap: () {
          print ('owl');
        },
        child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
        
      GestureDetector(
        onTap: (){  
          print ('svarog coolest honkai star rail character');
        },
        child: Image.network('https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/05/06/svarog-coolest-character-honkai-star-rail.jpg')
        ),
      GestureDetector(
        onTap: (){
          print ('egg dogs');
        },
        child: Image.network('https://i.ytimg.com/vi/QSQwZlRMVAM/maxresdefault.jpg')
        ),
      GestureDetector(
        onTap: (){
          print ('egg dog');
        },
        child: Image.network('https://cdn.shopify.com/s/files/1/1796/6745/files/10_b8909457-fe50-48dd-9899-bd1d9724df98_800x.png?v=1696607773')
        ),
      GestureDetector(
        onTap: (){
          print ('egg dog gif');
        },
        child: Image.network('https://media.tenor.com/ixhbuYewXtsAAAAC/eggdog.gif')
        )
    ];
    

    return GridView.count(crossAxisCount:3, children: images,);
  }
}
