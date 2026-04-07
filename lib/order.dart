import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget{
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPage();
}

class _ActivityPage extends State<ActivityPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orders'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body: Center(
        child: Column(
          children: [
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection("orders").where(
                'creator',
                isEqualTo: FirebaseAuth.instance.currentUser!.uid,
              ).snapshots(),

              builder: (context, snapshot){
                //CircularProgressIndicator dite chacci na
                if(!snapshot.hasData || snapshot.data!.docs.isEmpty){
                  return const Text('No orders yet :(');
                }

                return Expanded(
                  child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),

                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const[
                            BoxShadow(
                              color: Colors.black12,
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //ADDRESS
                            Text(
                              "Address: ${snapshot.data!.docs[index].data()['address']}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 6),
                          //product list
                            const Text(
                              "Products: ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 6),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                snapshot.data!.docs[index]
                                    .data()['products']
                                    .length,
                                  (i)  {
                                  return Text(
                                    "• ${snapshot.data!.docs[index].data()['products'][i]}"
                                  );
                                  }//i
                              ),
                            ),
                            const SizedBox(height: 6),

                            //Price
                            Text(
                              "Total tk ${snapshot.data!.docs[index].data()['price']}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 6),

                            //Date
                            Text(
                                snapshot.data!.docs[index]
                                    .data()['date']
                                    .toString(),
                              style: const TextStyle(fontSize: 15),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}