import 'package:flutter_app_pilot/core/local_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final localStorageProvider = Provider<LocalStorage>((ref) {
  return LocalStorage();
});
