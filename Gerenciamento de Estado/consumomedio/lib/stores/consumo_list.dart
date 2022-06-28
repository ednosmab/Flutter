import 'package:mobx/mobx.dart';

part 'consumo_list.g.dart';

class ConsumoList = _ConsumoList with _$ConsumoList;

abstract class _ConsumoList with Store {
  // observable realiza uma marcação para deixar a variável list mutável
  @observable
  ObservableList<double> list = ObservableList<double>();

  // computed prepara um acumulador na variável total
  @computed
  String get mediaGeral {
    if (list.length > 0) {
      double total = 0;
      list.forEach((element) {
        total = total + element;
      });
      return (total / list.length).toStringAsFixed(2);
    } else {
      return '0.00';
    }
  }

  // action aqui é permitido a criação de funções, ações, métodos que serão usados
  @action
  void addConsumo(double data) {
    list.add(data);
  }

  @action
  void limpar() => list = ObservableList<double>();
}
