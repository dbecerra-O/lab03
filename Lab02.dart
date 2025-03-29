class Profesor {
  int? dni;
  String? nombre;
  int? sueldo;

  // Constructor
  Profesor(this.dni, this.nombre);
  Profesor.ganancia(this.sueldo);

  String toString() {
    return 'nombre: $nombre, DNI: $dni, sueldo:$sueldo';
  }

  int sueldoNeto() {
    return (sueldo! * 0.92).toInt();
  }
}

void main() {
  Profesor p1 = Profesor(12345678, 'Teobaldo');
  p1.sueldo = 5000;

  print(p1.toString());
  print('Sueldo neto: ${p1.sueldoNeto()}');

  Profesor p2 = Profesor.ganancia(2000);
  p2.dni = 87654321;
  p2.nombre = 'Samuel';

  print(p2.toString());
  print('Sueldo neto: ${p2.sueldoNeto()}');
}
