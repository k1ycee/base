import 'package:base/models/brew.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class DatabaseServices{
  final String uid;
  DatabaseServices({this.uid});
  final CollectionReference brewCollection = Firestore.instance.collection('brews');

  Future updateUserData(String name, int strength, String sugars) async{
    return await brewCollection.document(uid).setData({
      'name': name,
      'strength': strength,
      'sugars': sugars,
    });
  }

  List<Brew> _brewListFromSnapShot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Brew(
        name: doc.data['name'] ?? '',
        strength: doc.data['strength'] ?? 0,
        sugars: doc.data['sugars'] ?? '0',
      );
    }).toList();
  }

  Stream<List<Brew>> get brew{
    return brewCollection.snapshots()
    .map(_brewListFromSnapShot);
  }

}