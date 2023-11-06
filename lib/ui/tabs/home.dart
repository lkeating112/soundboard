import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var images = [
      
      Ink.image(
        image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        child: InkWell(
          onTap: () async {
            print ('owl');
            final player = AudioPlayer();
            await player.setUrl('https://samplelib.com/lib/preview/mp3/sample-3s.mp3');
            player.play();
          },
        ),
      ),
        
      Ink.image(
        image: NetworkImage('https://www.dexerto.com/cdn-cgi/image/width=3840,quality=75,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/05/06/svarog-coolest-character-honkai-star-rail.jpg'),  
        child: InkWell(
          onTap: () async {
            print ('svarog coolest honkai star rail character');
            final player = AudioPlayer();                   // Create a player
            final duration = await player.setUrl(           // Load a URL
              'https://samplelib.com/lib/preview/mp3/sample-6s.mp3');                 // Schemes: (https: | file: | asset: )
            player.play();
          },
        ),
      ),

      Ink.image(
        image: NetworkImage('https://i.ytimg.com/vi/QSQwZlRMVAM/maxresdefault.jpg'),
        child: InkWell(
          onTap: () async {
            print ('egg dogs');
            final player = AudioPlayer();                   // Create a player
            final duration = await player.setUrl(           // Load a URL
              'https://samplelib.com/lib/preview/mp3/sample-9s.mp3');                 // Schemes: (https: | file: | asset: )
            player.play();
          },
        ),
      ),

      Ink.image(
        image: NetworkImage('https://cdn.shopify.com/s/files/1/1796/6745/files/10_b8909457-fe50-48dd-9899-bd1d9724df98_800x.png?v=1696607773'),
        child: InkWell(
          onTap: () async {
            print ('egg dog');
            final player = AudioPlayer();                   // Create a player
            final duration = await player.setUrl(           // Load a URL
              'https://samplelib.com/lib/preview/mp3/sample-12s.mp3');                 // Schemes: (https: | file: | asset: )
            player.play();
          },
        ),
      ),

      Ink.image(
        image: NetworkImage('https://media.tenor.com/ixhbuYewXtsAAAAC/eggdog.gif'),
        child: InkWell(
          onTap: () async {
            print ('egg dog gif');
            final player = AudioPlayer();                   // Create a player
            final duration = await player.setUrl(           // Load a URL
              'https://samplelib.com/lib/preview/mp3/sample-15s.mp3');                 // Schemes: (https: | file: | asset: )
            player.play();
          },
        ),
      ),

    ];

    return GridView.count(crossAxisCount:3, children: images,);
  }
}

