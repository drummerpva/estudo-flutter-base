part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedState with _$ExampleFreezedState {
  factory ExampleFreezedState.initial() = _ExampleFreezedStateInitial;
  factory ExampleFreezedState.loading() = _ExampleFreezedStateLoading;
  factory ExampleFreezedState.showBanner(
      {required List<String> name,
      required String message}) = _ExampleFreezedStateBanner;
  factory ExampleFreezedState.data({required List<String> name}) =
      _ExampleFreezedStateData;
}
