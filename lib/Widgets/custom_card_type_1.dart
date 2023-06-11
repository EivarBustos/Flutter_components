import 'package:flutter/material.dart';

import '../Theme/app_theme.dart';


class CustomCar extends StatelessWidget {
  const CustomCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color:AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Esse aliquip do sunt fugiat est ut id in qui laborum.'),
          ),

           Padding(
             padding: const EdgeInsets.only(right: 5),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
             TextButton(
              onPressed: (){},
               child: const Text('Cancel')
                             ),

              TextButton(
              onPressed: (){},
               child: const Text('ok')
               ),
              ],
             ),
           )

          ],
        ),
    );
  }
}