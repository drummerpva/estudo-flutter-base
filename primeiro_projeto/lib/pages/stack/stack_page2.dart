import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.daninoce.com.br/wp-content/uploads/2017/11/o-que-voce-precisa-saber-antes-de-ir-a-nova-york-dani-noce-imagem-destaque-960x625.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white38,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'New York',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
