
import 'package:flutter/material.dart';

import '../../utils/string_res.dart';
import '../../widgets/custom_appbar_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarView(
            title: Text(
              StringRes.profile.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).iconTheme.color,
                size: 14,
              ),
            ),
          ),
          Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.background,
              )
          ),
        ],
      ),
    );
  }
}
