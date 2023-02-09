import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_data_riverpod/riverpod/riverpod_call.dart';



class Home extends ConsumerWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(fetchUserProvider);

    return users.when(
      data: (data) {
        return ListView.builder(
          itemCount:data.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Text('Last Name: ${data[index].firstName}'),              
              ],
            );
          })
        );
      }, 
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()),);
      },
      loading: () {
        return const Center(child: CircularProgressIndicator(),);
      },
    );
  }
}