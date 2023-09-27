import 'dart:io';
import 'dart:ui';

import 'package:challenge_camera/application/picture_form/picture_form_state.dart';
import 'package:challenge_camera/application/picture_provider/picture_provider.dart';
import 'package:challenge_camera/presentation/camera/camera_screen.dart';
import 'package:challenge_camera/presentation/common/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widgets/get_or_change_image_button.dart';
part 'widgets/image_preview.dart';
part 'widgets/detail_form.dart';
part 'widgets/upload_button.dart';

class TakePictureScreen extends ConsumerWidget {
  const TakePictureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSubmitting = ref.watch(pictureStateProvider).isSubmitting;

    if (isSubmitting) {
      FocusScope.of(context).unfocus();
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.purple[50]),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Column(
              children: [
                _ImagePreview(),
                _DetailForm(),
                _UploadButton(),
              ],
            ),
            if (isSubmitting)
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: const Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
