import 'package:flutter/material.dart';

class UserManage extends StatefulWidget {
  const UserManage({super.key});

  @override
  State<UserManage> createState() => _UserManageState();
}

class _UserManageState extends State<UserManage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("This is Users screen")),);
  }
}
