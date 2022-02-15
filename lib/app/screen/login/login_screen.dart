import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:personal_trainer/app/screen/login/bloc/login_bloc.dart';
import 'package:personal_trainer/app/screen/login/state/login_state.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(LoginState.initial()),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: SignInScreen(
            headerBuilder: (context, constraints, _) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                      'https://firebase.flutter.dev/img/flutterfire_300x.png'),
                ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  action == AuthAction.signIn
                      ? 'Welcome to FlutterFire UI! Please sign in to continue.'
                      : 'Welcome to FlutterFire UI! Please create an account to continue',
                ),
              );
            },
            footerBuilder: (context, _) {
              return const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'By signing in, you agree to our terms and conditions.',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            },
            providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                clientId: '...',
              )
            ]));
  }
}
// body: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: LoginForm(),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Divider(),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Text('No account yet? Register by clicking button below!'),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(
//         onPressed: () {
//           context.pushRoute(RegisterRoute());
//         },
//         child: Text('Register'),
//       ),
//     ),
//   ],
// ),
//
// class LoginForm extends StatefulWidget {
//   @override
//   _LoginFormState createState() => _LoginFormState();
// }
//
// class _LoginFormState extends State<LoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   String? _login;
//   String? _password;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               validator: MultiValidator([
//                 EmailValidator(errorText: "Enter valid email"),
//                 RequiredValidator(errorText: 'Email is required')
//               ]),
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), hintText: 'Email'),
//               onChanged: (value) => _login = value,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//               validator: MinLengthValidator(6,
//                   errorText: "Password should be at least 6 characters"),
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(), hintText: 'Password'),
//               onChanged: (value) => _password = value,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   var loginCubit = BlocProvider.of<LoginBloc>(context);
//                   loginCubit.loginUser(_login ?? "", _password ?? "");
//                 }
//               },
//               child: Text('Login'),
//             ),
//           ),
//           BlocListener<LoginBloc, LoginState>(
//             listener: (context, state) {
//               if (state is LoginSuccess) {
//                 if (state.appUser is Trainer) {
//                   var id = (state.appUser as Trainer).id;
//                   context.replaceRoute(AccountChooseRoute(trainerId: id));
//                 } else if (state.appUser is Client) {
//                   var id = (state.appUser as Client).id;
//                   context.replaceRoute(ClientRoute(id: id));
//                 }
//               } else if (state is LoginFailed) {
//                 ToastMessage.show(
//                     'Login Failed - check internet connection or create new account');
//               }
//             },
//             child: Container(),
//           ),
//         ],
//       ),
//     );
//   }
//}
