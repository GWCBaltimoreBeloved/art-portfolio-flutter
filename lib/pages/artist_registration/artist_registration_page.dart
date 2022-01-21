import 'package:art_portfolio_flutter/common/error_snackbar.dart';
import 'package:art_portfolio_flutter/common/form_text_input.dart';
import 'package:art_portfolio_flutter/pages/artist_registration/artist_registration_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ArtistRegistrationPage extends ConsumerWidget {
  const ArtistRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
        children: [
          _PageHeader(),
          SizedBox(height: 24),
          _FirstNameInput(),
          SizedBox(height: 24),
          _LastNameInput(),
          SizedBox(height: 24),
          _DescriptionInput(),
          SizedBox(height: 24),
          _InstagramInput(),
          SizedBox(height: 24),
          _GithubInput(),
          SizedBox(height: 24),
          _SubmitButton(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'artist Registration',
      style: TextStyle(fontSize: 36),
    );
  }
}

class _FirstNameInput extends ConsumerWidget {
  const _FirstNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return FormTextInput(
      label: 'First Name',
      hintText: 'Sydney',
      onChanged: (value) => provider.setFirstName(value),
    );
  }
}

class _LastNameInput extends ConsumerWidget {
  const _LastNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return FormTextInput(
      label: 'Last Name',
      hintText: 'Feliz',
      onChanged: (value) => provider.setLastName(value),
    );
  }
}

class _InstagramInput extends ConsumerWidget {
  const _InstagramInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: FormTextInput(
            label: 'instagram url',
            hintText: 'kimkardasian',
            onChanged: (value) => provider.setInstagram(value),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 22),
          child: FaIcon(
            FontAwesomeIcons.instagram,
            size: 56,
          ),
        ),
      ],
    );
  }
}

class _GithubInput extends ConsumerWidget {
  const _GithubInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: FormTextInput(
            label: 'Github url',
            hintText: 'ariana grande',
            onChanged: (value) => provider.setGithub(value),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 22),
          child: FaIcon(
            FontAwesomeIcons.instagram,
            size: 56,
          ),
        ),
      ],
    );
  }
}

class _DescriptionInput extends ConsumerWidget {
  const _DescriptionInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return FormTextInput(
      label: 'Description',
      minLines: 3,
      hintText: 'Many art very cool',
      onChanged: (value) => provider.setDescription(value),
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () async {
        final error = await provider.submit();
        if (error == null) {
          GoRouter.of(context).pop(context);
        } else {
          showErrorSnackbar(context, message: error);
        }
      },
    );
  }
}
