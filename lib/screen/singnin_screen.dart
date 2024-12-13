import 'package:examen_mdcdf/routes/route.dart';
import 'package:examen_mdcdf/widgets/custom_screen.dart';
import 'package:flutter/material.dart';

class SingninScreen extends StatelessWidget {
  const SingninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    //bool _checkEnabled = true;
    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);

    final Map<String, String> formValues = {
      'nombre': 'Andres',
      'apellido': 'Iniesta',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
      body: Column(children: [
        FlutterLogo(size: 50,),
        SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[2].route); 
                },
                child: const Text("Sign in"),
              ),
              AlertDialog(
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("CERRAR"))
                ],
              )
            ],
          ),
        ),
      ),
      ],)
    );
  }
}
