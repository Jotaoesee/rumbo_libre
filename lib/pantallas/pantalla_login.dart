import 'package:flutter/material.dart';
import 'package:rumbo_libre/customizables/boton_personalizado.dart';
import 'package:rumbo_libre/customizables/campo_texto_personalizado.dart';

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({super.key});

  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  final TextEditingController _controladorCorreo = TextEditingController();
  final TextEditingController _controladorContrasena = TextEditingController();
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

            // Formulario para el login
            Form(
              key: _claveFormulario,
              child: Column(
                children: [
                  // Campo de correo electrónico (usando la clase reutilizable)
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

                  // Campo de contraseña (usando la clase reutilizable)
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

                  // Botón de iniciar sesión (usando la clase reutilizable)
                  BotonPersonalizado(
                    texto: 'Iniciar Sesión',
                    colorFondo: Colors.white,
                    colorTexto: Colors.teal,
                    accion: () {
                      // Acción a realizar cuando el botón es presionado
                    },
                  ),
                  const SizedBox(height: 20),

                  // Botón de registro (usando la clase reutilizable)
                  BotonPersonalizado(
                    texto: '¿No tienes cuenta? Regístrate',
                    colorFondo: Colors.white,
                    colorTexto: Colors.teal,
                    accion: () {
                      // Acción a realizar cuando el botón es presionado
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
