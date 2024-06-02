import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionhandlerFlutter extends StatefulWidget {
  const PermissionhandlerFlutter({super.key});

  @override
  State<PermissionhandlerFlutter> createState() => PpermissionhanderState();
}

class PpermissionhanderState extends State<PermissionhandlerFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text('Microphone'),
            onTap: () {
              requestPermition(permission: Permission.microphone);
            },
          ),
          ListTile(
            title: const Text('Camera'),
            onTap: () {
              requestPermition(permission: Permission.camera);
            },
          ),
          ListTile(
            title: const Text('Store'),
            onTap: () {
              requestPermition(permission: Permission.storage);
            },
          ),
          ListTile(
            title: const Text('Location'),
            onTap: () {
              requestPermition(permission: Permission.location);
            },
          ),
        ],
      ),
    );
  }
}

requestPermition({required Permission permission}) async {
  final status = await permission.status;
  if (status.isGranted) {
  } else if (status.isDenied) {
    if (await permission.request().isGranted) {
    } else {}
  } else {}
}
