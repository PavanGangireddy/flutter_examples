import 'package:dartz/dartz.dart';
import 'package:flutter_app_pilot/core/error/failures.dart';
import 'package:flutter_app_pilot/core/resources/data_state.dart';
import 'package:flutter_app_pilot/food_app/data/repositories/dishes_repository_impl.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/fake_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repositories/dishes_repository.dart';

final signinInteractor = Provider<SigninInteractor>((ref) {
  return SigninInteractor(DishesRepositoryImpl(FakeDishServiceImpl()));
});

class SigninInteractor implements UseCase<Unit, NoParams> {
  final IDishesRepository _accountRepository;

  SigninInteractor(this._accountRepository);

  @override
  Future<DataState<Unit>> call(NoParams params) {
    return _accountRepository.getPopularDishesList();
  }
}
