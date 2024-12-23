import 'package:examen_mdcdf/routes/route.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes de Flutter")),
          //backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.ListViweOptions[index].icon),
                  title: Text(AppRoutes.ListViweOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.ListViweOptions[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.MenuOptions.length));
  }
}