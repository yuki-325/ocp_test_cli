import 'package:ocp_test_cli/models/product.dart';
import 'package:ocp_test_cli/utils/specification.dart';

abstract class Filter<T> {
  Iterable<Product> where(List<T> items, Specification<T> spec);
}
