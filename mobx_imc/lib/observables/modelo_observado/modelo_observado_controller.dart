import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/product_model.dart';
import 'package:mobx_imc/observables/modelo_observado/model/product_store.dart';
part 'modelo_observado_controller.g.dart';

class ModeloObservadoController = ModeloObservadoControllerBase
    with _$ModeloObservadoController;

abstract class ModeloObservadoControllerBase with Store {
  @observable
  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(product: ProductModel(name: "Computador"), selected: false),
      ProductStore(product: ProductModel(name: "Celular"), selected: false),
      ProductStore(product: ProductModel(name: "Teclado"), selected: false),
      ProductStore(product: ProductModel(name: "Mouse"), selected: false),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(ProductStore(
        product: ProductModel(name: "Conputador"), selected: false));
  }

  @action
  void removeProduct() {
    if (products.isNotEmpty) products.removeAt(0);
  }

  @action
  void selectProduct(int index) {
    products[index].selected = !products[index].selected;
  }
}
