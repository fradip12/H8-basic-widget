import 'package:basic_2/arguments/berita_arguments.dart';
import 'package:basic_2/controller/car_provider.dart';
import 'package:basic_2/pages/detail_pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListBeritaUI extends StatelessWidget {
  const ListBeritaUI({super.key});

  @override
  Widget build(BuildContext context) {
    final carsProvider = Provider.of<CarProvider>(context);
    final loadedCars = carsProvider.cars;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              // Todays News Widget
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today News',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Wes, 08 January 2024')
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Latest News Widget
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest News',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(
                        width: 12,
                      ),
                      itemCount: 9,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            // Sink dengan setter
                            // carsProvider.selectingCar = loadedCars[index];
                            carsProvider.selectCar(loadedCars[index]);
                            Navigator.pushNamed(
                              context,
                              DetailBeritaUI.routeName,
                              arguments: BeritaArguments(
                                title: '$index',
                                description: 'Sayang sekali',
                                image:
                                    'https://akcdn.detik.net.id/community/media/visual/2024/01/24/jepang-vs-indonesia-ayase-ueda-piala-asia-piala-asia-2023-indonesia-vs-jepang_169.jpeg?w=700&q=90',
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 250,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      'https://picsum.photos/200/300',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Title Berita $index',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Description Berita $index',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              // Hot News Widget
              Column(
                children: [
                  // Row Hot News
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot News',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    primary: true,
                    shrinkWrap: true,
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return ListTile(
                        title: Text(
                          'Title Berita $index',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          'Description Berita $index',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        leading: Container(
                          width: 60,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                'https://picsum.photos/200/300',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
