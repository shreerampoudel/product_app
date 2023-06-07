import 'package:flutter/material.dart';
import 'package:productapp/data.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 173, 137),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 26, 26),
        title: const Text("Product App"),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: const Color.fromARGB(255, 175, 224, 173),
              elevation: 10,
              child: Column(
                children: [
                  Image.network(productList[index].image),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productList[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0), // Add margin to the description
                    child: Text(
                      productList[index].description,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
