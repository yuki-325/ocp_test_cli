import 'package:ocp_test_cli/specifications/and_specification.dart';
import 'package:ocp_test_cli/models/color.dart';
import 'package:ocp_test_cli/specifications/color_specification.dart';
import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/utils/product_filter.dart';
import 'package:ocp_test_cli/models/size.dart';
import 'package:ocp_test_cli/specifications/size_specification.dart';

void main(List<String> arguments) {
  final Product apple =
      Product(name: "apple", color: Color.red, size: Size.small);
  final Product tree =
      Product(name: "tree", color: Color.green, size: Size.large);
  final Product house =
      Product(name: "house", color: Color.blue, size: Size.large);
  final List<Product> products = [
    apple,
    tree,
    house,
  ];

  ProductFilter productFilter = ProductFilter();
  print("Green products:");
  productFilter
      .where(products, ColorSpecification(color: Color.green))
      .forEach((p) => print(" - ${p.name} is green."));
  print("Large products:");
  productFilter
      .where(products, SizeSpecification(size: Size.large))
      .forEach((p) => print(" - ${p.name} is large."));
  print("Large Blue products:");
  productFilter
      .where(
          products,
          AndSpecification(
            ColorSpecification(color: Color.blue),
            SizeSpecification(size: Size.large),
          ))
      .forEach((p) => print(" - ${p.name} is large and blue"));
}
