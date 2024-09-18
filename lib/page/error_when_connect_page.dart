import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Ko tim thay trang')),
    );
    // return Scaffold(
    //   body: Center(
    //     child: Image.asset('assets/images/image_not_found.png'),
    //   ),
    // );
  }
}

class UnAuthorizationPage extends StatelessWidget {
  const UnAuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No permission'),
      ),
    );
  }
}
