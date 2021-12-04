import 'package:art_portfolio_flutter/common/form_text_input.dart';
import 'package:art_portfolio_flutter/pages/artist_registration/artist_registration_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistRegistrationPage extends ConsumerWidget {
  const ArtistRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
        children: [
          _PageHeader(),
          SizedBox(height: 24),
          _FirstNameInput(),
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
      'Registration',
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

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(registrationProvider);

    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () => provider.submit(),
    );
  }
}
