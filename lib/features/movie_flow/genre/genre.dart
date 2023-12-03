import 'package:flutter/material.dart';

@immutable
class Genre {
  final String name;
  final bool isSelected;
  final int id;

  const Genre({required this.name, this.isSelected = false, this.id = 0});

  Genre toggleSelected() => Genre(name: name, isSelected: !isSelected, id: id);

  @override
  String toString() =>
      "Genre('name':$name, 'isSelected':$isSelected, 'id':$id)";

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Genre &&
            other.name == name &&
            other.isSelected == isSelected);
  }

  @override
  int get hashCode => name.hashCode ^ isSelected.hashCode ^ id.hashCode;
}
