import 'package:meta/meta.dart';

/// Information about a [Category].
class Category {
  final String name;
  final double conversion;

  /// A [Category] stores its name and conversion factor.
  const Category({
    @required this.name,
    @required this.conversion,
  })  : assert(name != null),
        assert(conversion != null);

  /// Creates a [Category] from a JSON object.
  Category.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['conversion'] != null),
        name = jsonMap['name'],
        conversion = jsonMap['conversion'].toDouble();
}