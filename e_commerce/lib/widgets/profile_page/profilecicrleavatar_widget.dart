import 'package:flutter/material.dart';

class ProfileCircleAvatarWidget extends StatelessWidget {
  final double height, width;
  final String userName, profilePhotoUrl;
  const ProfileCircleAvatarWidget({
    required this.userName,
    required this.profilePhotoUrl,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height * 0.15,
          width: height * 0.15,
        ),
        Positioned(
          top: 0,
          child: CircleAvatar(
            radius: height * 0.075,
            child: profilePhotoUrl != ""
                ? Image.network(
                    profilePhotoUrl.toString(),
                  )
                : Text(
                    userName[0],
                  ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.camera_alt,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
