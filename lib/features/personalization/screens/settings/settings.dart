import 'package:e_commerce_app/common/widgets/custom-shapes/container/primary_header_container.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(child: Column(children: [Text("Accounts")],))

            /// Body
          ],
        ),
      ),
    );
  }
}
