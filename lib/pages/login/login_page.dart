import 'package:art_portfolio_flutter/common/error_snackbar.dart';
import 'package:art_portfolio_flutter/common/form_text_input.dart';
import 'package:art_portfolio_flutter/my_router.dart';
import 'package:art_portfolio_flutter/pages/login/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

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
    return Form(
      child: ListView(
        padding: EdgeInsets.only(
          left: 24,
          top: 8,
          right: 24,
          bottom: 24,
        ),
        children: [
          _PageHeader(),
          SizedBox(height: 24),
          _EmailInput(),
          SizedBox(height: 24),
          _PasswordInput(),
          SizedBox(height: 24),
          _SubmitButton(),
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
      'Login',
      style: TextStyle(fontSize: 36),
    );
  }
}

class _EmailInput extends ConsumerWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(loginProvider);

    return FormTextInput(
      label: 'Email',
      hintText: 'myEmail@gmail.com',
      validator: (value) {
        if (value?.isEmpty == true) {
          return 'must not be empty';
        }
      },
      onChanged: (value) => provider.setEmail(value),
    );
  }
}

class _PasswordInput extends ConsumerWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(loginProvider);

    return FormTextInput(
      label: 'Password',
      obscureText: !provider.isPasswordVisible,
      hintText: '**********',
      suffixIcon: IconButton(
        icon: Icon(
          provider.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: provider.togglePasswordVisibility,
      ),
      onChanged: (value) => provider.setPassword(value),
      validator: (value) {
        if (value?.isEmpty == true) {
          return 'must not be empty';
        }
      },
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(loginProvider);

    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () async {
        final isValid = Form.of(context)?.validate() == true;

        if (!isValid) {
          return;
        }

        final error = await provider.submit();
        if (error == null) {
          GoRouter.of(context).push(
            MyRouter.routes.emailVerification,
          );
        } else {
          showErrorSnackbar(
            context,
            message: error,
          );
        }
      },
    );
  }
}
