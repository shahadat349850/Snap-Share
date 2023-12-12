import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:snapshare/view/screen/my_profile_screen.dart';
import '../../utils/colors.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late GlobalKey<AnimatedListState> _animatedListKey;
  Color _containerColor = Colors.grey;

  // Initialize with two fixed messages
  final List<Map<String, dynamic>> _fixedMessages = [
    {'text': 'I\'m also fine', 'user': 'user1'},
    {'text': 'I\'m fine & You?', 'user': 'user2'},
    {'text': 'How are you?', 'user': 'user1'},
    {'text': 'Hello', 'user': 'user2'},
    {'text': 'Hi', 'user': 'user1'},
  ];

  @override
  void initState() {
    super.initState();
    _animatedListKey = GlobalKey<AnimatedListState>();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leadingWidth: 30,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: ListTile(
          leading: const CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.secondaryColor,
            child: Icon(Iconsax.user),
          ),
          title: InkWell(
            onTap: (){
              Get.to(()=>const MyProfileScreen());
            },
            child: Text('Biplob Shil',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          subtitle: const Text('Last seen 11:00AM'),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Iconsax.call,
              size: 25,
            ),
            onPressed: () {
              // Add your settings action here
            },
          ),
          IconButton(
            icon: const Icon(
              Iconsax.video,
              size: 25,
            ),
            onPressed: () {
              // Add your notifications action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: _animatedListKey,
              reverse: true,
              controller: _scrollController,
              initialItemCount: _fixedMessages.length,
              itemBuilder: (context, index, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: MessageWidget(
                    text: _fixedMessages[index]['text'],
                    user: _fixedMessages[index]['user'],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      onChanged: (text) {
                        _containerColor = text.isEmpty ? Colors.grey : Colors.blue;
                        setState(() {});
                      },
                      controller: _messageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        filled: true,
                        fillColor: Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white,                        suffixIcon: Container(
                          margin: const EdgeInsets.all(2),
                            color: _containerColor,
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(Iconsax.send_1),
                            onPressed: () {
                                    _sendMessage();
                                  },
                          ),
                        ),
                        hintText: 'Write message',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      // Determine the user for the new message
      String currentUser =
          _fixedMessages.isEmpty || _fixedMessages.first['user'] == 'user2'
              ? 'user1'
              : 'user2';

      // Add the new message to the beginning of the list of fixed messages
      _fixedMessages.insert(0, {
        'text': _messageController.text,
        'user': currentUser,
      });

      // Clear the text input
      _messageController.clear();

      // Scroll to the bottom when a new message is added
      _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      // Update the AnimatedList using GlobalKey
      _animatedListKey.currentState?.insertItem(0);
    }
  }
}

class MessageWidget extends StatelessWidget {
  final String text;
  final String user;

  const MessageWidget({Key? key, required this.text, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: user == 'user1' ? _buildUser1Container() : _buildUser2Container(),
    );
  }

  Widget _buildUser1Container() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildUser2Container() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade300,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            topRight: Radius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
