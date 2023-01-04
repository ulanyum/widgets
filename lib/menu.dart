import 'package:flutter/material.dart';
import 'package:odev4/Elementler/animated/animated.dart';
import 'package:odev4/Elementler/aspectRatio.dart';
import 'package:odev4/Elementler/bottomNavigation.dart';
import 'package:odev4/Elementler/bottomSheet.dart';
import 'package:odev4/Elementler/boxlar.dart';
import 'package:odev4/Elementler/buttonlar.dart';
import 'package:odev4/Elementler/clipCrap.dart';
import 'package:odev4/Elementler/containerlar.dart';
import 'package:odev4/Elementler/contents.dart';
import 'package:odev4/Elementler/customPaint.dart';
import 'package:odev4/Elementler/datepicker.dart';
import 'package:odev4/Elementler/formlar.dart';
import 'package:odev4/Elementler/gridview.dart';
import 'package:odev4/Elementler/icons.dart';
import 'package:odev4/Elementler/images.dart';
import 'package:odev4/Elementler/layoutbuilder.dart';
import 'package:odev4/Elementler/listview.dart';
import 'package:odev4/Elementler/listeler.dart';
import 'package:odev4/Elementler/placeholder.dart';
import 'package:odev4/Elementler/semanticWidgets.dart';
import 'package:odev4/Elementler/sliver.dart';
import 'package:odev4/Elementler/snacksBar.dart';
import 'package:odev4/Elementler/stacks.dart';
import 'package:odev4/Elementler/step.dart';
import 'package:odev4/Elementler/tabbartabview.dart';
import 'package:odev4/Elementler/wrap.dart';

class MenuYapimi extends StatelessWidget {
  const MenuYapimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/template.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            //Buraya Profilim gelecek
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.transparent),
              accountName: Text("Hasan Tütüncüoğlu"),
              accountEmail: Text("ulanyum@mailru"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/profil_pic.jpg",
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Buttonlar"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Buttonlar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Listeler"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Listeler()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Yazılar"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Yazilar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Images"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagesWidget()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Icons"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IconsWidget()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Semantic Widget"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SemanticWidgets()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Container"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Containerlar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Placeholder"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlaceHolders()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Animated Widget"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Animasyonlar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Formlar"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Formlar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Bottom Navigation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigationBars()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.list),
            ),
            title: Text("Aspect Ratio"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AspectRatios()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Sliver"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Slivers()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Bottom Sheet"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomSheets()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Snack Bar"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SnacksBars()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Gridview"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gridvews()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Boxlar"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Boxlar()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Tab Bar Tabview"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TabbarandTabview()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Date Picker"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DatePickers()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Stack"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Stacks()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Wrap"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Wraps()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Clip Rect"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClipCraps()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Step"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Steps()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.smart_button),
            ),
            title: Text("Layout Builder"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LayoutBuilders()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.format_paint),
            ),
            title: Text("Custom Paint"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomPaints()));
            },
          ),
        ],
      ),
    );
  }
}
