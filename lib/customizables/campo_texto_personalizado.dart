import 'package:flutter/material.dart';

class CampoTextoPersonalizado extends StatefulWidget {
  final String etiqueta; // Etiqueta para el campo
  final IconData icono; // Ícono del campo
  final TextEditingController controlador; // Controlador para manejar el texto
  final bool esContrasenia; // Si es campo de contraseña u otro tipo de texto
  final String? Function(String?)? validador; // Función para validar el campo

  const CampoTextoPersonalizado({
    super.key,
    required this.etiqueta,
    required this.icono,
    required this.controlador,
    this.esContrasenia = false,
    this.validador,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CampoTextoPersonalizadoState createState() =>
      _CampoTextoPersonalizadoState();
}

class _CampoTextoPersonalizadoState extends State<CampoTextoPersonalizado> {
  bool _mostrarContrasenia =
      false; // Variable para controlar la visibilidad de la contraseña

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controlador,
      obscureText: widget.esContrasenia &&
          !_mostrarContrasenia, // Controla si el campo es de contraseña
      validator: widget.validador,
      decoration: InputDecoration(
        labelText: widget.etiqueta,
        labelStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(widget.icono, color: Colors.white),
        suffixIcon: widget.esContrasenia
            ? IconButton(
                icon: Icon(
                  _mostrarContrasenia ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _mostrarContrasenia = !_mostrarContrasenia;
                  });
                },
              )
            : null,
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
