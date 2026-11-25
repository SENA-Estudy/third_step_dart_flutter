class Empleado {
  final String nombre;
  Empleado(this.nombre);
  int calcularBonificacion(int ventasMes) => 0;
  String resumen() => 'Empleado: $nombre';
}

class Mesero extends Empleado {
  Mesero(super.nombre);
  @override
  int calcularBonificacion(int ventasMes) => ventasMes * 3 ~/ 100; // 3 % de sus ventas
  @override
  String resumen() => '${super.resumen()} (mesero)'; // reutiliza al padre
}

class Cajero extends Empleado {
  Cajero(super.nombre);
  @override
  int calcularBonificacion(int ventasMes) => 50000; // valor fijo
}

void main() {
  List<Empleado> equipo = [Mesero('Carlos'), Cajero('Laura')];
  for (final e in equipo) {
    print('${e.resumen()}: bonificación ${e.calcularBonificacion(1000000)}');
  }
  // Empleado: Carlos (mesero): bonificación 30000
  // Empleado: Laura: bonificación 50000
}
