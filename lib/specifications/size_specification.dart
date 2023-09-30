import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/models/size.dart';
import 'package:ocp_test_cli/utils/specification.dart';

class SizeSpecification implements Specification<Product> {
  final Size size;

  SizeSpecification({required this.size});

  @override
  bool isSatisfied(Product item) {
    return item.size == size;
  }
}
