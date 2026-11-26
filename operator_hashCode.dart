class Producto {
  final String nombre;
  final int precio;
  Producto(this.nombre, this.precio);
  @override
  bool operator ==(Object other) =>
      other is Producto && other.nombre == nombre && other.precio == precio;
  @override
  int get hashCode => Object.hash(nombre, precio);
}

void main() {
  final a = Producto('Ajiaco', 28000);
  final b = Producto('Ajiaco', 28000);
  print(a == b); // sin override: false · con override: true
  print({a, b}.length); // un Set no repite: 1
}
