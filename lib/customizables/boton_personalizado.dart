import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final String texto; // Texto que aparecerá en el botón
  final Color colorFondo; // Color de fondo del botón
  final Color colorTexto; // Color del texto del botón
  final VoidCallback
      accion; // Acción que se ejecutará cuando se presione el botón
  final BorderRadiusGeometry? bordeRedondeado; // Borde redondeado (opcional)
  final double altura; // Altura del botón (opcional)

  const BotonPersonalizado({
    super.key,
    required this.texto,
    required this.colorFondo,
    required this.colorTexto,
    required this.accion,
    this.bordeRedondeado =
        const BorderRadius.all(Radius.circular(12)), // Valor predeterminado
    this.altura = 17, // Altura predeterminada
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: accion,
      style: ElevatedButton.styleFrom(
        foregroundColor: colorTexto,
        backgroundColor: colorFondo, // Color del texto
        shape: RoundedRectangleBorder(
          borderRadius: bordeRedondeado!, // Forma redondeada del botón
        ),
        padding: EdgeInsets.symmetric(
            vertical: altura,
            horizontal: 40), // Aumentar el valor de horizontal para mayor largo
        elevation: 8,
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
