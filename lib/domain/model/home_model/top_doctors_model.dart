import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class TopDoctorsModel {
  final String id=uuid.v4();
  final String name;
  bool isSelected;

  TopDoctorsModel({required this.name, required this.isSelected});
}