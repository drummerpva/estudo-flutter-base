import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Column(
        children: [
          /* Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://super.abril.com.br/wp-content/uploads/2018/07/mr-bean.png?w=1024&resize=1200,800'),
            ),
          ) */
          ImageAvatar(
            urlImage:
                'https://super.abril.com.br/wp-content/uploads/2018/07/mr-bean.png?w=1024&resize=1200,800',
          ),
          SizedBox(
            height: 10,
          ),
          ImageAvatar(
            urlImage: 'https://tm.ibxk.com.br/2020/10/07/07135049677178.jpg',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.black,
              ],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: Text(
                'AO VIVO',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
