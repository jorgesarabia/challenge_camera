extension TitleExtension on String {
  String capitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => split(' ').map((str) => str.capitalized()).join(' ');
}
