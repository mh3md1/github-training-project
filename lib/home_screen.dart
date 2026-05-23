import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                child: Text(
                  'see all',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                child: Text(
                  'see all',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),

        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 100),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 5,
            ),
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
            itemBuilder: (context, index) {
              return Container(color: Colors.blue.shade200, width: 100);
            },
            itemCount: 10,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Latest Product',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                child: Text(
                  'see all',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),

        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(color: Colors.blue.shade200, height: 200);
          },
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Famous Product',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                child: Text(
                  'see all',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),

        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue.shade200,
              height: 200,
              margin: EdgeInsetsDirectional.only(bottom: 5),
            );
          },
          shrinkWrap: true,
          itemCount: 10,
        ),
      ],
    );
  }
}
