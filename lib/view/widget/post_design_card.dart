import 'package:flutter/material.dart';

class PostDesignCard extends StatefulWidget {
  const PostDesignCard({super.key});

  @override
  State<PostDesignCard> createState() => _PostDesignCardState();
}

class _PostDesignCardState extends State<PostDesignCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
                        'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais'),
                  ),
                ),
                title: const Text(
                  'Kathryn Annee',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 17,
                  ),
                ),
                subtitle: const Text(
                  '@anny2002',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                trailing: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.cyan.shade100,
                      borderRadius: BorderRadius.circular(35)),
                  child: const Icon(Icons.notifications),
                ),
              ),
              Container(
                  height: 400,
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://images.pexels.com/photos/45987/pexels-photo-45987.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      fit: BoxFit.fill,
                    ),
                  )),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.heart_broken_rounded,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 7),
                    const Icon(
                      Icons.sms_outlined,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '20 comments',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(0.8)),
                    ),
                    const SizedBox(width: 200),
                    const Icon(
                      Icons.content_paste_sharp,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
                            'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais'),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Add comments',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
