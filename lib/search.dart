import 'package:flutter/material.dart';
import 'main.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Search extends StatelessWidget {




 // String num = 'jIQ0Dx-4peE';
// eIc4mqyN1Q8
 // final image ;
  var title  ;
  // final msg;

  Search({ this.title});




  Widget build(BuildContext context) {

    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: title ,
        // initialVideohref :

        flags: YoutubePlayerFlags(
          autoPlay : true,
          mute: false,

        )

    );


    return Scaffold(

      body: SingleChildScrollView(
      child: Stack(
      //      Column(
      children: [


         // Container(
         //   margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
         //   child : Text( title,
         //
         //   style: TextStyle(
         //
         //     fontSize: 20,
         //     color: Colors.black87,
         //
         //   ),
         //
         //   ),
         //
         // )

      YoutubePlayer(

      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
      aspectRatio: 16/9,

    ),

    ]
    )
    )

    );

  }
}
