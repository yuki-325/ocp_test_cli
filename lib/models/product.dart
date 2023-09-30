import 'package:ocp_test_cli/models/color.dart';
import 'package:ocp_test_cli/models/size.dart';

class Product {
  final String name;
  final Color color;
  final Size size;

  Product({
    required this.name,
    required this.color,
    required this.size,
  });
}
