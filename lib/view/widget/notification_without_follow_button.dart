import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationWithoutFollowButton extends StatelessWidget {
  const NotificationWithoutFollowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFF97D2E8),
                          child:  Icon(
                            Iconsax.user,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 16,),
                        Expanded(
                          child: RichText(
                            text:  TextSpan(
                                children:  [
                                  TextSpan(
                                      text: "Biplob Shil ",
                                      style: Theme.of(context).textTheme.titleLarge),
                                  TextSpan(
                                      text: "commented on ",
                                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                          fontWeight: FontWeight.normal
                                      )),
                                  TextSpan(
                                      text: "Moniruzzman ",
                                      style: Theme.of(context).textTheme.titleLarge),
                                  TextSpan(
                                      text: "SOC Compliance report",
                                      style: Theme.of(context).textTheme.titleLarge),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text("Last Wednesday at 9:30 AM",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return const Divider(
        height: 1,
      );
    },);
  }
}