// import 'package:comment_page_app/comments/comment_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:comment_page_app/comments/comment_models.dart';

// bool isTextfieldActive = false, isCommentReply = false;
// TextEditingController commentController = TextEditingController();
// TextEditingController replyController = TextEditingController();
// String messageString = '', replyToCommentString = '';
// CommentModel cModel = CommentModel(
//     avatar: Icons.perm_identity_outlined,
//     userName: 'Name',
//     content: messageString);

// int currentIndex = 0;
// List<String> comments = [
//   '',
// ];

// List<Widget> eachCommentWidget = [
//   CommentWidget(
//     comment: comments[0],
//   ),
// ];

// class CommentPage extends StatefulWidget {
//   const CommentPage({super.key});

//   @override
//   State<CommentPage> createState() => _CommentPageState();
// }

// class _CommentPageState extends State<CommentPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Listener(
//       onPointerDown: (_) {
//         FocusScopeNode currentFocus = FocusScope.of(context);
//         if (!currentFocus.hasPrimaryFocus &&
//             currentFocus.focusedChild != null) {
//           currentFocus.focusedChild?.unfocus();
//         }
//         setState(() {
//           isTextfieldActive = false;
//         });
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromRGBO(255, 51, 51, 1),
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back)),
//           centerTitle: true,
//           title: const Text(
//             'Comments',
//           ),
//         ),
//         body: SizedBox(
//           height: size.height,
//           width: size.width,
//           child: Stack(
//             children: [
//               Positioned(
//                 top: 5,
//                 child: SizedBox(
//                   height: isTextfieldActive == true
//                       ? size.height * 0.43
//                       : size.height * 0.8,
//                   width: size.width,
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           padding: const EdgeInsets.all(8),
//                           itemCount: eachCommentWidget.length,
//                           itemBuilder: (BuildContext context, index) {
//                             return eachCommentWidget[index];
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               //------------------------------------------------------------

//               // Positioned(
//               //     bottom: 2,
//               //     child: isCommentReply
//               //         ? const ReplyCommentBoxAndButton()
//               //         : const CommentBoxAndButton()),
//               const Positioned(bottom: 2, child: CommentBoxAndButton()),
//               // const Positioned(bottom: 2, child: ReplyCommentBoxAndButton()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// //------------------------------Comment Box And Button Widget----------------------------------------

// class CommentBoxAndButton extends StatefulWidget {
//   const CommentBoxAndButton({super.key});

//   @override
//   State<CommentBoxAndButton> createState() => _CommentBoxAndButtonState();
// }

// class _CommentBoxAndButtonState extends State<CommentBoxAndButton> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Container(
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(230, 230, 230, 1),
//         border: Border.all(
//           color: const Color.fromRGBO(230, 230, 230, 1),
//           width: 1.2,
//         ),
//       ),
//       width: size.width,
//       height: size.height / 9,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(left: 10),
//             decoration: BoxDecoration(
//               color: const Color.fromRGBO(255, 255, 255, 1),
//               borderRadius: const BorderRadius.all(Radius.circular(20)),
//               border: Border.all(
//                 color: const Color.fromRGBO(213, 216, 222, 1),
//                 width: 2,
//               ),
//             ),
//             width: size.width * 0.75,
//             height: size.height / 20,
//             //-------------------------------------------------

//             child: TextFormField(
//               textCapitalization: TextCapitalization.sentences,
//               focusNode: myFocusNode,
//               autofocus: false,
//               onTap: (() {
//                 if (isTextfieldActive == false) {
//                   setState(() {
//                     isCommentReply = false;
//                   });
//                 }
//                 setState(() {
//                   isTextfieldActive = true;
//                 });
//               }),
//               controller: commentController,
//               cursorColor: Colors.black45,
//               decoration: const InputDecoration(
//                 border: InputBorder.none,
//                 suffixIcon: Icon(
//                   Icons.insert_emoticon_sharp,
//                   color: Color.fromRGBO(158, 158, 158, 1),
//                 ),
//                 hintText: "Comment",
//                 hintStyle: TextStyle(
//                   fontFamily: 'Roboto',
//                   color: Color.fromRGBO(117, 117, 117, 1),
//                   fontSize: 16,
//                   letterSpacing: 1.5,
//                 ),
//                 contentPadding: EdgeInsets.only(left: 10, top: 3),
//               ),
//             ),
//           ),
//           SizedBox(
//             width: size.width / 7,
//             height: size.height / 22,
//             child: TextButton(
//               onPressed: () {
//                 print("Textbutton");
//                 //   //-----------------------------COMMENT----------------------------
//                   // setState(
//                   //   () {
//                   //     comments.add(commentController.text);
//                   //     eachCommentWidget.add(
//                   //       CommentWidget(
//                   //         comment: comments[eachCommentWidget.length],
//                   //       ),
//                   //     );
//                   //     // }
//                   //     isCommentReply = false;
//                   //   },
//                   // );
//                   // print(replyToCommentString);
//                   // commentController.clear();
//                 //   //-----------------------------COMMENT----------------------------

//                 //-----------------------------COMMENT----------------------------
//                 // if (isCommentReply == true) {
//                 //   setState(
//                 //     () {
//                 //       comments.add(commentController.text);
//                 //       eachCommentWidget.add(
//                 //         ReplyCommentWidget(
//                 //           commentReply: comments[eachCommentWidget.length],
//                 //         ),
//                 //       );
//                 //       isCommentReply = false;
//                 //     },
//                 //   );
//                 // } else {
//                 //   setState(
//                 //     () {
//                 //       comments.add(commentController.text);
//                 //       eachCommentWidget.add(
//                 //         CommentWidget(
//                 //           comment: comments[eachCommentWidget.length],
//                 //         ),
//                 //       );
//                 //       isCommentReply = false;
//                 //     },
//                 //   );
//                 // }
//                 // print(replyToCommentString);
//                 // commentController.clear();

//                 //-----------------------------COMMENT----------------------------
//               },
//               child: const Text(
//                 'Post',
//                 style: TextStyle(
//                     color: Color.fromRGBO(255, 255, 255, 1),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 16),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// //------------------------------ReplyComment Box And Button Widget----------------------------------------
