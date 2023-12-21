import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelyn/features/profile/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileLoading()) {
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(ProfileLoadSuccess());
  }
}
