import 'package:finance/config/image/icon/icons.dart';
import 'package:finance/config/image/image/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAvatar extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  final bool isAdmin;
  final VoidCallback? onCameraTap;
  ProfileAvatar({
    required this.image,
    required this.onTap,
    this.isAdmin = false,
    this.onCameraTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage:
              AssetImage(image.isEmpty ? ImageService.noimage : image),
        ),
        isAdmin
            ? Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: onCameraTap,
                  child: Container(
                    width: 32,
                    height: 32,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: const Color(0xff4F3D56),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: SvgPicture.asset(
                      IconService.camera,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 18,
                      height: 18,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
