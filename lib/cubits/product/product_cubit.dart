import 'package:bloc/bloc.dart';
import 'package:md_hadiuzzaman/data/product_details.dart';

import '../../data/data_from_internet.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState());

  Future<void> fetchData() async {
    emit(LoadingState());
    try {
      final String _jsonBody = await fetchFromInternet();
      List<ProductDetailsClass> _list = productDetailsFromJson(_jsonBody);

      emit(LoadedState(productList: _list));
    } catch (error) {
      emit(ErrorState(errorMessage: error.toString()));
    }
  }
}
