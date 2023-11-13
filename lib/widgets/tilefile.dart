import 'package:flutter/material.dart';

class TileFileWidget extends StatelessWidget {
  final String title;
  const TileFileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.folder, color: Colors.yellow),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(onTap: (){},child: Icon(Icons.clear, size: 20))
        ],
      ),
    );
  }
}
