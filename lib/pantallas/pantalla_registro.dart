import 'package:flutter/material.dart';
import 'package:rumbo_libre/customizables/boton_personalizado.dart';
import 'package:rumbo_libre/customizables/campo_texto_personalizado.dart';
import 'package:rumbo_libre/pantallas/pantalla_login.dart';

class PantallaRegistro extends StatefulWidget {
  const PantallaRegistro({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PantallaRegistroState createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {
  final TextEditingController _controladorCorreo = TextEditingController();
  final TextEditingController _controladorContrasena = TextEditingController();
  final TextEditingController _controladorConfirmarContrasena =
      TextEditingController();
  final _claveFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.greenAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo de la aplicación
            Image.asset('assets/logo.png', width: 150),
            const SizedBox(height: 20),

            // Formulario para el registro
            Form(
              key: _claveFormulario,
              child: Column(
                children: [
                  // Campo de correo electrónico
                  CampoTextoPersonalizado(
                    etiqueta: 'Correo Electrónico',
                    icono: Icons.email,
                    controlador: _controladorCorreo,
                    validador: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa un correo';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Campo de contraseña
                  CampoTextoPersonalizado(
                    etiqueta: 'Contraseña',
                    icono: Icons.lock,
                    controlador: _controladorContrasena,
                    esContrasenia: true,
                    validador: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu contraseña';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Campo para confirmar contraseña
                  CampoTextoPersonalizado(
                    etiqueta: 'Confirmar Contraseña',
                    icono: Icons.lock,
                    controlador: _controladorConfirmarContrasena,
                    esContrasenia: true,
                    validador: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor confirma tu contraseña';
                      }
                      if (value != _controladorContrasena.text) {
                        return 'Las contraseñas no coinciden';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Botón de registro
                  BotonPersonalizado(
                    texto: 'Registrar',
                    colorFondo: Colors.white,
                    colorTexto: Colors.teal,
                    accion: () {
                      if (_claveFormulario.currentState?.validate() ?? false) {
                        // Aquí puedes agregar la lógica para registrar al usuario
                        // Ejemplo: navegación a la pantalla de login después del registro
                      }
                    },
                    altura: 20,
                  ),
                  const SizedBox(height: 20),

                  // Botón para volver a la pantalla de login
                  BotonPersonalizado(
                    texto: '¿Ya tienes cuenta? Inicia sesión',
                    colorFondo: Colors.white,
                    colorTexto: Colors.teal,
                    accion: () {
                      // Acción a realizar cuando el botón es presionado
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PantallaLogin(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
