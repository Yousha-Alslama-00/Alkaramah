
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     YoutubePlayerController _controller1 = YoutubePlayerController(
//       initialVideoId: 'iLnmTe5Q2Qw',
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: true,
//       ),
//     );

//     YoutubePlayerController _controller2 = YoutubePlayerController(
//       initialVideoId: 'iLnmTe5Q2Qw',
//       flags: YoutubePLayerFlags(
//         isLive: true,
//       ),
//     );

//     String videoId;
//     videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");
//     print(videoId); // BBAyRBTfsOU

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Youtube Player Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               YoutubePlayer(
//                 controller: _controller1,
//                 showVideoProgressIndicator: true,
//                 videoProgressIndicatorColor: Colors.amber,
//                 progressColors: ProgressColors(
//                   playedColor: Colors.amber,
//                   handleColor: Colors.amberAccent,
//                 ),
//                 onReady: () {
//                   _controller1.addListener(listener);
//                 },
//               ),
//               YoutubePlayerBuilder(
//                 player: YoutubePlayer(
//                   controller: _controller2,
//                 ),
//                 builder: (context, player) {
//                   return Column(
//                     children: [
//                       // some widgets
//                       player,
//                       // some other widgets
//                     ],
//                   );
//                 },
//               ),
//               YoutubePlayer(
//                 controller: _controller2,
//                 liveUIColor: Colors.amber,
//               ),
//               YoutubePlayer(
//                 controller: _controller2,
//                 bottomActions: [
//                   CurrentPosition(),
//                   ProgressBar(isExpanded: true),
//                   TotalDuration(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
