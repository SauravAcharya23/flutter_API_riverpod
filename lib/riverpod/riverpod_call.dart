
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_data_riverpod/model/users.dart';
import 'package:get_data_riverpod/network/network_request.dart';

/*
class GetDataAPI {

  List<Data> usersdata = [];

  fetchData()async{
    Users users = await NetworkProvider().fetchDataFromServer();

    if(users.data != null){
      usersdata = users.data!;
      
    }
  }
  getdata()=>usersdata;

}
*/

final fetchUserProvider = FutureProvider((ref)async {

  List<Data> usersdata = [];
  
  Users users = await NetworkProvider().fetchDataFromServer();

  if(users.data != null){
    usersdata = users.data!;   
  }
  return usersdata;
},);
