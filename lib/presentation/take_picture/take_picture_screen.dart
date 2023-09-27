import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:challenge_camera/application/picture_form/picture_form_state.dart';
import 'package:challenge_camera/application/picture_providers.dart';
import 'package:challenge_camera/presentation/camera/camera_screen.dart';
import 'package:challenge_camera/presentation/common/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'widgets/get_or_change_image_button.dart';
part 'widgets/image_preview.dart';
part 'widgets/detail_form.dart';
part 'widgets/upload_button.dart';

class TakePictureScreen extends StatelessWidget {
  const TakePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.purple[50]),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            _ImagePreview(),
            _DetailForm(),
            _UploadButton(),
          ],
        ),
      ),
    );
  }
}
