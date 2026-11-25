/**
 * @override se usa para sobreescribir el comportamiento de un metodo en una clase.
 * Basicamente permite una variante de lo que se conoce como polimorfismo.
 * Se puede definir como una anotacion o un metadato
 */

class Usuario {
  int age;
  String firtName;
  String nacionality;

  Usuario({
    required this.age,
    required this.firtName,
    this.nacionality = "Colombia",
  });

  @override
  String toString() =>
      """
==========> Usuario <==========
    nombre: $firtName 
    edad: $age
    nacionalidad: $nacionality
  """;
}

class Producto {
  final String nombre;
  final int precio;
  Producto(this.nombre, this.precio);
  @override
  String toString() => '$nombre - \$ $precio';
}

void main() {
  Usuario usuario1 = Usuario(age: 29, firtName: "Juan", nacionality: "Canada");
  print(usuario1);

  final ajiaco = Producto('Ajiaco', 28000);
  print(ajiaco); // sin @override: Instance of 'Producto'
  // con @override: Ajiaco - $ 28000
  print([ajiaco, Producto('Limonada', 6000)]);
  // [Ajiaco - $ 28000, Limonada - $ 6000]
}
