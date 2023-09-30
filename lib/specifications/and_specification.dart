import 'package:ocp_test_cli/specifications/color_specification.dart';
import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/specifications/size_specification.dart';
import 'package:ocp_test_cli/utils/specification.dart';

class AndSpecification implements Specification<Product> {
  final ColorSpecification colorSpecification;
  final SizeSpecification sizeSpecification;

  AndSpecification(this.colorSpecification, this.sizeSpecification);

  @override
  bool isSatisfied(Product item) {
    return colorSpecification.isSatisfied(item) &&
        sizeSpecification.isSatisfied(item);
  }
}
