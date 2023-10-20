import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 24.0,
            ),
            onPressed: () {},
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Container(
                  color: const Color(0xff4B5563),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  child: const Text(
                    'E',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const Text(
                'Epictetus',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 24.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
