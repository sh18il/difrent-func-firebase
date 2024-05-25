import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_mproject/model/model.dart';
import 'package:student_mproject/service/data_service.dart';
import 'package:student_mproject/view/add_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddPage(),
        ));
      }),
      body: StreamBuilder<QuerySnapshot<StModel>>(
        stream: FirebaseService().getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Snapshot has error'),
            );
          } else {
            List<QueryDocumentSnapshot<StModel>> studentsDoc =
                snapshot.data?.docs ?? [];
            return Expanded(
              child: ListView.builder(
                itemCount: studentsDoc.length,
                itemBuilder: (context, index) {
                  final data = studentsDoc[index].data();
                  final id = studentsDoc[index].id;
                  return Card(
                    elevation: 5, // Add elevation for a card-like look
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        data.name ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "name: ${data.name ?? 'N/A'}",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "email: ${data.email ?? 'N/A'}",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      // leading: CircleAvatar(
                      //   backgroundColor: Colors.deepPurple,
                      //   backgroundImage:NetworkImage(data.image!),
                      // ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              FirebaseService().deleteData(id);
                              // value.deleteImage(data.image);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
