// /*void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }
// */
//
// class ChatMessages {
//   String idFrom;
//   String idTo;
//   String timestamp;
//   String content;
//   int type;
//
//   ChatMessages(
//       {required this.idFrom,
//         required this.idTo,
//         required this.timestamp,
//         required this.content,
//         required this.type});
//
//   Map<String, dynamic> toJson() {
//     return {
//       FirestoreConstants.idFrom: idFrom,
//       FirestoreConstants.idTo: idTo,
//       FirestoreConstants.timestamp: timestamp,
//       FirestoreConstants.content: content,
//       FirestoreConstants.type: type,
//     };
//   }
//
//   factory ChatMessages.fromDocument(DocumentSnapshot documentSnapshot) {
//     String idFrom = documentSnapshot.get(FirestoreConstants.idFrom);
//     String idTo = documentSnapshot.get(FirestoreConstants.idTo);
//     String timestamp = documentSnapshot.get(FirestoreConstants.timestamp);
//     String content = documentSnapshot.get(FirestoreConstants.content);
//     int type = documentSnapshot.get(FirestoreConstants.type);
//
//     return ChatMessages(
//         idFrom: idFrom,
//         idTo: idTo,
//         timestamp: timestamp,
//         content: content,
//         type: type);
//   }
// }
//
// UploadTask uploadImageFile(File image, String filename) {
//   Reference reference = firebaseStorage.ref().child(filename);
//   UploadTask uploadTask = reference.putFile(image);
//   return uploadTask;
// }
//
// Future<void> updateFirestoreData(
//     String collectionPath, String docPath, Map<String, dynamic> dataUpdate) {
//   return firebaseFirestore
//       .collection(collectionPath)
//       .doc(docPath)
//       .update(dataUpdate);
// }
//
// Stream<QuerySnapshot> getChatMessage(String groupChatId, int limit) {
//   return firebaseFirestore
//       .collection(FirestoreConstants.pathMessageCollection)
//       .doc(groupChatId)
//       .collection(groupChatId)
//       .orderBy(FirestoreConstants.timestamp, descending: true)
//       .limit(limit)
//       .snapshots();
// }
//
// void sendChatMessage(String content, int type, String groupChatId,
//     String currentUserId, String peerId) {
//   DocumentReference documentReference = firebaseFirestore
//       .collection(FirestoreConstants.pathMessageCollection)
//       .doc(groupChatId)
//       .collection(groupChatId)
//       .doc(DateTime.now().millisecondsSinceEpoch.toString());
//   ChatMessages chatMessages = ChatMessages(
//       idFrom: currentUserId,
//       idTo: peerId,
//       timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
//       content: content,
//       type: type);
//
//   FirebaseFirestore.instance.runTransaction((transaction) async {
//     transaction.set(documentReference, chatMessages.toJson());
//   });
// }
//
// // checking if sent message
// bool isMessageSent(int index) {
//   if ((index > 0 &&
//       listMessages[index - 1].get(FirestoreConstants.idFrom) !=
//           currentUserId) ||  index == 0) {
//     return true;
//   } else {
//     return false;
//   }
// }
//
// // checking if received message
// bool isMessageReceived(int index) {
//   if ((index > 0 &&
//       listMessages[index - 1].get(FirestoreConstants.idFrom) ==
//           currentUserId) ||  index == 0) {
//     return true;
//   } else {
//     return false;
//   }
// }
//
// void onSendMessage(String content, int type) {
//   if (content.trim().isNotEmpty) {
//     textEditingController.clear();
//     chatProvider.sendChatMessage(
//         content, type, groupChatId, currentUserId, widget.peerId);
//     scrollController.animateTo(0,
//         duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
//   } else {
//     Fluttertoast.showToast(
//         msg: 'Nothing to send', backgroundColor: Colors.grey);
//   }
// }
//
// Future getImage() async {
//   ImagePicker imagePicker = ImagePicker();
//   XFile? pickedFile;
//   pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
//   if (pickedFile != null) {
//     imageFile = File(pickedFile.path);
//     if (imageFile != null) {
//       setState(() {
//         isLoading = true;
//       });
//       uploadImageFile();
//     }
//   }
// }
//
// void uploadImageFile() async {
//   String fileName = DateTime.now().millisecondsSinceEpoch.toString();
//   UploadTask uploadTask = chatProvider.uploadImageFile(imageFile!, fileName);
//   try {
//     TaskSnapshot snapshot = await uploadTask;
//     imageUrl = await snapshot.ref.getDownloadURL();
//     setState(() {
//       isLoading = false;
//       onSendMessage(imageUrl, MessageType.image);
//     });
//   } on FirebaseException catch (e) {
//     setState(() {
//       isLoading = false;
//     });
//     Fluttertoast.showToast(msg: e.message ?? e.toString());
//   }
// }
//
// Widget buildMessageInput() {
//   return SizedBox(
//     width: double.infinity,
//     height: 50,
//     child: Row(
//       children: [
//         Container(
//           margin: const EdgeInsets.only(right: Sizes.dimen_4),
//           decoration: BoxDecoration(
//             color: AppColors.burgundy,
//             borderRadius: BorderRadius.circular(Sizes.dimen_30),
//           ),
//           child: IconButton(
//             onPressed: getImage,
//             icon: const Icon(
//               Icons.camera_alt,
//               size: Sizes.dimen_28,
//             ),
//             color: AppColors.white,
//           ),
//         ),
//         Flexible(
//             child: TextField(
//               focusNode: focusNode,
//               textInputAction: TextInputAction.send,
//               keyboardType: TextInputType.text,
//               textCapitalization: TextCapitalization.sentences,
//               controller: textEditingController,
//               decoration:
//               kTextInputDecoration.copyWith(hintText: 'write here...'),
//               onSubmitted: (value) {
//                 onSendMessage(textEditingController.text, MessageType.text);
//               },
//             )),
//         Container(
//           margin: const EdgeInsets.only(left: Sizes.dimen_4),
//           decoration: BoxDecoration(
//             color: AppColors.burgundy,
//             borderRadius: BorderRadius.circular(Sizes.dimen_30),
//           ),
//           child: IconButton(
//             onPressed: () {
//               onSendMessage(textEditingController.text, MessageType.text);
//             },
//             icon: const Icon(Icons.send_rounded),
//             color: AppColors.white,
//           ),
//         ),
//       ],
//     ),
//   );
// }
//
// Widget buildItem(int index, DocumentSnapshot? documentSnapshot) {
//   if (documentSnapshot != null) {
//     ChatMessages chatMessages = ChatMessages.fromDocument(documentSnapshot);
//     if (chatMessages.idFrom == currentUserId) {
//       // right side (my message)
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               chatMessages.type == MessageType.text
//                   ? messageBubble(
//                 chatContent: chatMessages.content,
//                 color: AppColors.spaceLight,
//                 textColor: AppColors.white,
//                 margin: const EdgeInsets.only(right: Sizes.dimen_10),
//               )
//                   : chatMessages.type == MessageType.image
//                   ? Container(
//                 margin: const EdgeInsets.only(
//                     right: Sizes.dimen_10, top: Sizes.dimen_10),
//                 child: chatImage(
//                     imageSrc: chatMessages.content, onTap: () {}),
//               )
//                   : const SizedBox.shrink(),
//               isMessageSent(index)
//                   ? Container(
//                 clipBehavior: Clip.hardEdge,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(Sizes.dimen_20),
//                 ),
//                 child: Image.network(
//                   widget.userAvatar,
//                   width: Sizes.dimen_40,
//                   height: Sizes.dimen_40,
//                   fit: BoxFit.cover,
//                   loadingBuilder: (BuildContext ctx, Widget child,
//                       ImageChunkEvent? loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return Center(
//                       child: CircularProgressIndicator(
//                         color: AppColors.burgundy,
//                         value: loadingProgress.expectedTotalBytes !=
//                             null &&
//                             loadingProgress.expectedTotalBytes !=
//                                 null
//                             ? loadingProgress.cumulativeBytesLoaded /
//                             loadingProgress.expectedTotalBytes!
//                             : null,
//                       ),
//                     );
//                   },
//                   errorBuilder: (context, object, stackTrace) {
//                     return const Icon(
//                       Icons.account_circle,
//                       size: 35,
//                       color: AppColors.greyColor,
//                     );
//                   },
//                 ),
//               )
//                   : Container(
//                 width: 35,
//               ),
//             ],
//           ),
//           isMessageSent(index)
//               ? Container(
//             margin: const EdgeInsets.only(
//                 right: Sizes.dimen_50,
//                 top: Sizes.dimen_6,
//                 bottom: Sizes.dimen_8),
//             child: Text(
//               DateFormat('dd MMM yyyy, hh:mm a').format(
//                 DateTime.fromMillisecondsSinceEpoch(
//                   int.parse(chatMessages.timestamp),
//                 ),
//               ),
//               style: const TextStyle(
//                   color: AppColors.lightGrey,
//                   fontSize: Sizes.dimen_12,
//                   fontStyle: FontStyle.italic),
//             ),
//           )
//               : const SizedBox.shrink(),
//         ],
//       );
//     } else {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               isMessageReceived(index)
//               // left side (received message)
//                   ? Container(
//                 clipBehavior: Clip.hardEdge,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(Sizes.dimen_20),
//                 ),
//                 child: Image.network(
//                   widget.peerAvatar,
//                   width: Sizes.dimen_40,
//                   height: Sizes.dimen_40,
//                   fit: BoxFit.cover,
//                   loadingBuilder: (BuildContext ctx, Widget child,
//                       ImageChunkEvent? loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return Center(
//                       child: CircularProgressIndicator(
//                         color: AppColors.burgundy,
//                         value: loadingProgress.expectedTotalBytes !=
//                             null &&
//                             loadingProgress.expectedTotalBytes !=
//                                 null
//                             ? loadingProgress.cumulativeBytesLoaded /
//                             loadingProgress.expectedTotalBytes!
//                             : null,
//                       ),
//                     );
//                   },
//                   errorBuilder: (context, object, stackTrace) {
//                     return const Icon(
//                       Icons.account_circle,
//                       size: 35,
//                       color: AppColors.greyColor,
//                     );
//                   },
//                 ),
//               )
//                   : Container(
//                 width: 35,
//               ),
//               chatMessages.type == MessageType.text
//                   ? messageBubble(
//                 color: AppColors.burgundy,
//                 textColor: AppColors.white,
//                 chatContent: chatMessages.content,
//                 margin: const EdgeInsets.only(left: Sizes.dimen_10),
//               )
//                   : chatMessages.type == MessageType.image
//                   ? Container(
//                 margin: const EdgeInsets.only(
//                     left: Sizes.dimen_10, top: Sizes.dimen_10),
//                 child: chatImage(
//                     imageSrc: chatMessages.content, onTap: () {}),
//               )
//                   : const SizedBox.shrink(),
//             ],
//           ),
//           isMessageReceived(index)
//               ? Container(
//             margin: const EdgeInsets.only(
//                 left: Sizes.dimen_50,
//                 top: Sizes.dimen_6,
//                 bottom: Sizes.dimen_8),
//             child: Text(
//               DateFormat('dd MMM yyyy, hh:mm a').format(
//                 DateTime.fromMillisecondsSinceEpoch(
//                   int.parse(chatMessages.timestamp),
//                 ),
//               ),
//               style: const TextStyle(
//                   color: AppColors.lightGrey,
//                   fontSize: Sizes.dimen_12,
//                   fontStyle: FontStyle.italic),
//             ),
//           )
//               : const SizedBox.shrink(),
//         ],
//       );
//     }
//   } else {
//     return const SizedBox.shrink();
//   }
// }
//
// Widget buildListMessage() {
//   return Flexible(
//     child: groupChatId.isNotEmpty
//         ? StreamBuilder<QuerySnapshot>(
//         stream: chatProvider.getChatMessage(groupChatId, _limit),
//         builder: (BuildContext context,
//             AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasData) {
//             listMessages = snapshot.data!.docs;
//             if (listMessages.isNotEmpty) {
//               return ListView.builder(
//                   padding: const EdgeInsets.all(10),
//                   itemCount: snapshot.data?.docs.length,
//                   reverse: true,
//                   controller: scrollController,
//                   itemBuilder: (context, index) =>
//                       buildItem(index, snapshot.data?.docs[index]));
//             } else {
//               return const Center(
//                 child: Text('No messages...'),
//               );
//             }
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(
//                 color: AppColors.burgundy,
//               ),
//             );
//           }
//         })
//         : const Center(
//       child: CircularProgressIndicator(
//         color: AppColors.burgundy,
//       ),
//     ),
//   );
// }
// }