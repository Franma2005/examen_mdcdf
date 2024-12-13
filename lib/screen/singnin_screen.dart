import 'package:examen_mdcdf/widgets/custom_screen.dart';
import 'package:flutter/material.dart';

class SingninScreen extends StatelessWidget {
   
  const SingninScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        
      )
    );
  }
}class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    //bool _checkEnabled = true;
    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);

    final Map<String, String> formValues = {
      'nombre':  'Andres',
      'apellido': 'Iniesta',
      'email': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
      body: SingleChildScrollView(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre del usuario',
                helperText: 'Solo letras',
                icon: Icons.verified_outlined,
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              SizedBox(height: 30),
               CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos del usuario',
                icon: Icons.person_4_outlined,
                obscureText: false,
                formProperty: 'apellidos',
                formValues: formValues,
              ),
              SizedBox(height: 30),
               CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-Mail del usuario',
                icon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                formProperty: 'email',
                formValues: formValues,
              ),
              SizedBox(height: 30),
               CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              SizedBox(height: 30),
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(child: Text('Usuario'), value: 'usuario'),
                  DropdownMenuItem(child: Text('Editor'), value: 'editor'),
                  DropdownMenuItem(child: Text('Programador'), value: 'programador'),
                  DropdownMenuItem(child: Text('Administrador'), value: 'administrador'),
                ], 
                onChanged: ((value){
                  print(value);
                  formValues['role'] = value ?? 'usuario';
                })
              ),
              SizedBox(height: 30),

              ValueListenableBuilder<bool>(
                valueListenable: _checkEnabled, 
                builder: (context, value, _){
                  return Checkbox(
                    value: value, 
                    onChanged: (newValue) {
                      _checkEnabled.value = newValue ?? true;
                    },
                  );
                }
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myFormKey.currentState!.validate()){
                    print('Fomulario no valido');
                    return;
                  }
                }, 
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                  )
              )
            ],
           ),
         ),
      ),
    );
  }
}