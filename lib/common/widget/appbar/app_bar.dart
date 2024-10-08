import 'package:flutter/material.dart';
import 'package:music_app/common/helpers/is_dark_mode.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.03), shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
