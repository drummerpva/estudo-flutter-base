import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Scrol View'),
      ),
/*       body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é top'),
            leading: CircleAvatar(),
          );
        },
      ), */
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é top'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
