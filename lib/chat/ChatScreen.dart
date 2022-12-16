// import 'package:flutter/material.dart';
// import 'package:flutterfire/core/services/auth.dart';
// import 'package:flutterfire/core/services/chat.dart';
// import 'package:flutterfire/ui/shared/loading.dart';
// import 'package:flutterfire/ui/widgets/chat_message.dart';
// import 'package:provider/provider.dart';
//
// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textController = TextEditingController();
//   final ScrollController _scrollController = ScrollController();
//   bool _isComposing = false;
//
//   void _handleSubmitted(String text) {
//     _textController.clear();
//     setState(() {
//       _isComposing = false;
//     });
//     ChatService().sendMessage(text);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<User>(context);
//     return StreamBuilder<List<ChatMessage>>(
//       stream: ChatService().messages,
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Loading();
//         }
//         final messages = snapshot.data;
//         return Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 controller: _scrollController,
//                 itemCount: messages.length,
//                 itemBuilder: (context, index) => messages[index],
//               ),
//             ),
//             Divider(height: 1.0),
//             Container(
//               decoration: BoxDecoration(color: Theme.of(context).cardColor),
//               child: _buildTextComposer(user),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget _buildTextComposer(User user) {
//     return IconTheme(
//       data: IconThemeData(color: Theme.of(context).accentColor),
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Row(
//           children: [
//             Flexible(
//               child: TextField(
//                 controller: _textController,
//                 onChanged: (text) {
//                   setState(() {
//                     _isComposing = text.length > 0;
//                   });
//                 },
//                 onSubmitted: _handleSubmitted,
//                 decoration:
//                 InputDecoration.collapsed(hintText: 'Send a message'),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 4.0),
//               child: IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: _isComposing
//                     ? () => _handleSubmitted(_textController.text)
//                     : null,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
