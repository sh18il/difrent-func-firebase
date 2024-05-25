import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:student_mproject/model/model.dart';

class FirebaseService {
  String collectionRef = 'Student';
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late final CollectionReference<StModel> studentRef;

  FirebaseService() {
    studentRef = firestore.collection(collectionRef).withConverter<StModel>(
          fromFirestore: (snapshot, options) =>
              StModel.fromJson(snapshot.data() ?? {}),
          toFirestore: (value, options) => value.toJson(),
        );
  }

  Future addData(StModel model) async {
    await studentRef.add(model);
  }

  Stream<QuerySnapshot<StModel>> getData() {
    return studentRef.snapshots();
  }

  Future deleteData(String id) async {
    await studentRef.doc(id).delete();
  }

  Future updateData(String id, StModel model) async {
    await studentRef.doc(id).update(model.toJson());
  }
}
