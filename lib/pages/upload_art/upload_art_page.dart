import 'package:art_portfolio_flutter/common/form_text_input.dart';
import 'package:art_portfolio_flutter/common/show_loading_dialog.dart';
import 'package:art_portfolio_flutter/pages/upload_art/upload_art_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadArtPage extends ConsumerWidget {
  const UploadArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: _PageBody(),
    );
  }
}

class _PageBody extends ConsumerWidget {
  const _PageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
      children: [
        _PageHeader(),
        SizedBox(height: 24),
        _Image(),
        SizedBox(height: 12),
        _ClearImageButton(),
        SizedBox(height: 24),
        _TitleInput(),
        SizedBox(height: 24),
        _SubmitButton(),
        SizedBox(height: 24),
      ],
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Upload Art',
      style: TextStyle(fontSize: 36),
    );
  }
}

class _Image extends ConsumerWidget {
  const _Image({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(uploadArtProvider);

    final imageBytes = provider.imageBytes;
    if (imageBytes != null) {
      return Image.memory(imageBytes);
    }

    return InkWell(
      onTap: provider.pickImage,
      child: Ink(
        height: 150,
        color: Colors.grey,
        child: Icon(Icons.add_a_photo_outlined),
      ),
    );
  }
}

class _ClearImageButton extends ConsumerWidget {
  const _ClearImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(uploadArtProvider);

    return IconButton(
      onPressed: provider.imageBytes != null ? provider.clearImage : null,
      icon: Icon(
        Icons.clear,
        color: provider.imageBytes == null ? Colors.grey : Colors.black,
      ),
    );
  }
}

class _TitleInput extends ConsumerWidget {
  const _TitleInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(uploadArtProvider);

    return FormTextInput(
      label: 'Title',
      hintText: 'The Dutchess',
      onChanged: (value) => provider.setName(value),
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(uploadArtProvider);

    return ElevatedButton(
      child: Text('Submit'),
      onPressed: provider.imageFile == null
          ? null
          : () async {
              final file = provider.imageFile!;

              final closeDialog = showLoadingDialog(
                context: context,
                text: 'Uploading image',
              );
              final uploadTask = await provider.uploadFile(file);
              uploadTask?.snapshotEvents.forEach((element) {
                print('here is an event');
                print(element.state);
              });
              closeDialog();
            },
    );
  }
}