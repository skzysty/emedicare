import 'package:flutter/material.dart';
import 'package:emedicare/pages/model/ChatUsermodel.dart';
import 'package:emedicare/widgets/conversationList';

class ChatPage extends StatefulWidget {
  @override
  _ChatPagetState createState() => _ChatPagetState();
}

class _ChatPagetState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Dr. Kara Labacara",
        messageText: "No problem. See you",
        imageURL:
            "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-female-doctor-in-hospital-picture-id1330046035?k=20&m=1330046035&s=612x612&w=0&h=L_l_ahw0_1xsSmnEK2RKkUEMj1In9204bzqbXmBLn_w=",
        time: "Now"),
    ChatUsers(
        name: "Dr. Jontra Volta",
        messageText: "Good to know",
        imageURL:
            "https://t3.ftcdn.net/jpg/01/43/81/94/360_F_143819453_Eai3IbcXhhGGoCWY5lso1ijI9nH387yC.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Dr. Hiroto Sakasishima",
        messageText: "Have you drink your medication?",
        imageURL:
            "https://asianhealthservices.org/wp-content/uploads/2020/07/20200226_0049-731x1024.jpg",
        time: "12:00 pm"),
    ChatUsers(
        name: "Dr. Saif Gäard",
        messageText: "Alright, Let's Meet at 2:00 pm",
        imageURL:
            "https://thumbs.dreamstime.com/b/portrait-positive-black-doctor-holding-medical-chart-male-over-white-background-178499631.jpg",
        time: "10:14 am"),
    ChatUsers(
        name: "Dr. Brandu Eks",
        messageText: "Hope, you're feeling a lot better",
        imageURL:
            "https://t4.ftcdn.net/jpg/03/10/37/43/360_F_310374365_fiIJLNqEeYVbXO0PpyUauQvZRreCMEdr.jpg",
        time: "23 May"),
    ChatUsers(
        name: "Dr. Alcina Dimitrescu",
        messageText: "Our next appointment will be the last for now",
        imageURL:
            "https://www.bayada.com/physicianservices/images/BPS_Header1_Mobile.jpg",
        time: "17 May"),
    ChatUsers(
        name: "Dr. Arinola Granada",
        messageText: "Take care baby <3?",
        imageURL:
            "https://thumbs.dreamstime.com/b/female-doctor-portrait-smiling-woman-her-arms-crossed-34896061.jpg",
        time: "24 Feb"),
    ChatUsers(
        name: "Dr. Kama Tai Yan",
        messageText: "The surgery cost will be at least ₱500,000",
        imageURL:
            "https://media.istockphoto.com/photos/my-surgeries-come-with-a-high-success-rate-picture-id592648152?k=20&m=592648152&s=612x612&w=0&h=qRbFvqwd69yP2t5BgJycl0ujYdVnSa1WLoELepwA4G0=",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
