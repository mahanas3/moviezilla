import 'package:flutter/material.dart';

class Cast extends StatefulWidget {
  const Cast({super.key});

  @override
  State<Cast> createState() => _CastState();
}

class _CastState extends State<Cast> {
  List personimages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKiqdtAiCZggpmCg9lKK4EUN_FDfQPN8WntQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR590QQCeiLhZj8Xk8mOp0iP72cIjkKrTvJvg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJyrkzpFkrr9pqz7jJnwLWs83qOB6__M2AMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5L4tr1r6IIW1DxObYZSOAkF1yoiNZwkfk2A&usqp=CAU'
  ];

  List names = ['Tom Holland', 'Zendaya', 'Benedict Cumberbatch', 'Brad Pitt'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff242A32),
        body: GridView.builder(
          itemCount: personimages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 1, childAspectRatio: 1 / 1.3),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.none,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(personimages[index]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      names[index],
                      style: const TextStyle(
                          color: Colors.white, fontFamily: 'popins2'),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
