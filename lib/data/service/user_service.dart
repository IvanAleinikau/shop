import 'package:get_it/get_it.dart';
import 'package:shop/core/models/user_model.dart';
import 'package:shop/data/repositories/user_repository.dart';

class UserService{
  final repository = GetIt.instance<UserRepository>();

  Future<CustomUser> fetchUser() async{
    return await repository.fetchUser();
  }

  Future<void> changeGender(String gender) async{
    await repository.changeGender(gender);
  }

  Future<void> changeIndex(int index) async{
    await repository.changeIndex(index);
  }

  Future<void> changeNames(String firstName,String surname) async{
    await repository.changeNames(firstName, surname);
  }
}