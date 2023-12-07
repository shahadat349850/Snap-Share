import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add location'),
          leading: const BackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    fillColor: Colors.grey.shade300,
                    hintText: 'Search',
                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                    )),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text(
                        'Jamuna Future Park',
                        style: TextStyle(
                          color: Color(0xFF1D2939),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        '0.4mi • ka-244, Progati Sarani, Kuril, Baridhara',
                        style: TextStyle(
                          color: Color(0xFF667085),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
