import 'package:flutter/material.dart';

class UserPostCard extends StatelessWidget {
  const UserPostCard({
    super.key, required this.onTab,
  });
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: InkWell(
                onTap: (){},
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
                            'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais'),
                  ),
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
              trailing: InkWell(
                onTap: (){},
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(35)),
                  child: const Icon(Icons.notifications),
                ),
              ),
            ),
            SizedBox(
                height:330,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://images.pexels.com/photos/45987/pexels-photo-45987.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.cover,
                  ),
                )),
            const SizedBox(height: 8,),
            Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: (){},
                  child: const Icon(
                    Icons.sms_outlined,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '20 comments',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87.withOpacity(0.8)),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){},
                  child: const Icon(
                    Icons.content_paste_sharp,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
             Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
                            'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais'),
                  ),
                ),
                const SizedBox(width: 7,),

                InkWell(
                  onTap: onTab,
                  child: const Text(
                    'Add comments',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                ),
              ],
                       )
          ],
        ),
      ),
    );
  }
}