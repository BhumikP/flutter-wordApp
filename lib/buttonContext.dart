import 'package:flutter/material.dart';

class ButtonContext extends StatelessWidget {
  Column _buildButttonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color:color),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButttonColumn(Colors.red, Icons.call, 'CALL'),
          _buildButttonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButttonColumn(Colors.green[300], Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}
