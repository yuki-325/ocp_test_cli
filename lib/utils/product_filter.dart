import 'package:ocp_test_cli/utils/filter.dart';
import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/utils/specification.dart';

class ProductFilter implements Filter<Product> {
  @override
  Iterable<Product> where(List<Product> items, Specification<Product> spec) {
    return items.where((p) => spec.isSatisfied(p));
  }
}
