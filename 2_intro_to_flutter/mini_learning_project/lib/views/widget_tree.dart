import 'package:flutter/material.dart';
import 'package:mini_learning_project/data/notifiers.dart';
import 'package:mini_learning_project/views/pages/home_page.dart';
import 'package:mini_learning_project/views/pages/profile_page.dart';
import 'package:mini_learning_project/views/widgets/navbar_widgets.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const WidgetTree({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Mini-Project"),
        centerTitle: true,
        backgroundColor: const Color(0xFF8B4332),
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),

      drawer: SafeArea(
        child: Column(
          children: [
            DrawerHeader(child: Text("My Drawer")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Waseem Ahmed"),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavBarWidget(),
    );
  }
}
