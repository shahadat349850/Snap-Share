import 'package:flutter/material.dart';
import 'package:snapshare/view/widget/image_data.dart';

class SearchingPhotoScreen extends StatefulWidget {
  const SearchingPhotoScreen({Key? key}) : super(key: key);

  @override
  State<SearchingPhotoScreen> createState() => _SearchingPhotoScreenState();
}

class _SearchingPhotoScreenState extends State<SearchingPhotoScreen> {
  List<ImageData> itemList = getImageDataList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'search',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: itemList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(itemList[index].path,fit: BoxFit.cover,),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}