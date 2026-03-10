import 'package:isar/isar.dart';

part 'usuario.g.dart';

@collection
class Usuario {
  Id id = Isar.autoIncrement;

  final String nome;
  final String email;
  final String telefone;
  final String fotoUrl;
  final double avaliacao;

  Usuario({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.fotoUrl,
    required this.avaliacao,
  });
}
