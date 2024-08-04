import 'package:ecommerc_project/data/models/albums_model.dart';
import 'package:ecommerc_project/data/repositories/albums_repo.dart';
import 'package:ecommerc_project/widgets/album_card.dart';
import 'package:flutter/material.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _nameState();
}

class _nameState extends State<AlbumsScreen> {
  List<AlbumsModel> myAlbums = [];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Container(
      padding: EdgeInsets.all(40),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  myAlbums = await AlbumsRepo().getAlbums();
                  // print('screen {$myAlbums[0].title)');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Text('get albums')),
            // for (int i = 0; i < myAlbums.length; i++)
            // AlbumCard(title: myAlbums[0].title)
            Expanded(
              child: ListView.builder(
                itemCount: myAlbums.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AlbumCard(title: myAlbums[index].title);
                },
              ),
            )
          ],
        ),
      ),
    )));
  }
}
