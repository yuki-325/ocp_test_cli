import 'package:ocp_test_cli/models/color.dart';
import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/utils/specification.dart';

class ColorSpecification implements Specification<Product> {
  final Color color;

  ColorSpecification({required this.color});

  @override
  bool isSatisfied(Product item) {
    return item.color == color;
  }
}
