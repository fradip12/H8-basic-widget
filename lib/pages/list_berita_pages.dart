import 'package:flutter/material.dart';

class ListBeritaUI extends StatelessWidget {
  const ListBeritaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Todays News Widget
              const Placeholder(
                fallbackHeight: 200,
              ),
              // Latest News Widget
              const Placeholder(
                fallbackHeight: 200,
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
