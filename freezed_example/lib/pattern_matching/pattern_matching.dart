import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error([String? message]) = UnionError;
}

void main(List<String> args) {
  // var union = Union(1);
  var union = Union.loading();
  final message = union.when<String>(
    (value) => 'Union Data implementado',
    loading: () => 'Loading implementado',
    error: (String? message) => 'Erro implementado',
  );
  print(message);

  final mensagemMaybe = union.maybeWhen(
    (value) => null,
    error: (String? message) => 'Error implementado',
    orElse: () => 'Padrão implementado',
  );
  print(mensagemMaybe);

  final mensagemMap = union.map(
    (value) => '${value.runtimeType}',
    loading: (loading) => '${loading.runtimeType} implementado',
    error: (error) => '${error.runtimeType} implementado',
  );
  print(mensagemMap);
}
