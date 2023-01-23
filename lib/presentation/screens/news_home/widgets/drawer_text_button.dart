import 'package:flutter/material.dart';

class DrawerTextButton extends StatelessWidget {
  const DrawerTextButton({
    required this.isSelected,
    required this.navigationRoute,
    required this.icon,
    required this.label,
    Key? key,
  }) : super(key: key);

  final String navigationRoute;
  final IconData icon;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.transparent),
        child: ButtonTheme(
          buttonColor: Theme.of(context).primaryColor,
          child: TextButton.icon(
            onPressed: isSelected ? null : () => Navigator.of(context).pushReplacementNamed(navigationRoute),
            icon: Icon(icon),
            label: SizedBox(
              width: double.infinity,
              child: Text(label),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
