import '../../data/product_details.dart';
import 'package:equatable/equatable.dart';

class ProductState {}

class LoadingState extends ProductState {}

class LoadedState extends ProductState with EquatableMixin {
  final List<ProductDetailsClass> productList;

  LoadedState({required this.productList});

  @override
  List<Object?> get props => [productList];
}

class ErrorState extends ProductState with EquatableMixin {
  final String errorMessage;

  ErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
