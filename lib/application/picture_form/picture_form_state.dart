import 'package:challenge_camera/application/models/picture_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PictureFormState extends StateNotifier<PictureForm> {
  PictureFormState() : super(const PictureForm());

  void changePath(String? imgPath) => state = state.copyWith(imgPath: imgPath);

  void changeTitle(String title) => state = state.copyWith(title: title);

  void changeDescription(String description) => state = state.copyWith(description: description);

  void changePlace(String place) => state = state.copyWith(place: place);

  void clear() => state = const PictureForm();
}

final formStateProvider = StateNotifierProvider<PictureFormState, PictureForm>((ref) => PictureFormState());
