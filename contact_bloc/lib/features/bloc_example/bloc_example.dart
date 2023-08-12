import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExample extends StatelessWidget {
  const BlocExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<ExampleBloc>()
              .add(ExampleAddNameEvent(name: 'Add by event'));
        },
        child: Icon(Icons.add),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          if (previous is ExampleStateInitial &&
              current is ExampleStateData &&
              current.name.length > 0) {
            return true;
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('A quantidade de nomes é ${state.name.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              buildWhen: (previous, current) {
                if (previous is ExampleStateInitial &&
                    current is ExampleStateData &&
                    current.name.length > 0) {
                  return true;
                }
                return false;
              },
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Text('Total de nomes é ${state.name.length}');
                }
                return SizedBox.shrink();
              },
              listener: (context, state) {
                print("Estado alterado para ${state.runtimeType}");
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleStateInitial) {
                  return true;
                }
                return false;
              },
              builder: (context, showLoader) {
                if (showLoader) {
                  return Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, List<String>>(
              selector: (state) {
                if (state is ExampleStateData) {
                  return state.name;
                }
                return [];
              },
              builder: (context, names) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    final name = names[index];
                    return ListTile(
                      onTap: () {
                        context
                            .read<ExampleBloc>()
                            .add(ExampleRemoveNameEvent(name: name));
                      },
                      title: Text(name),
                    );
                  },
                );
              },
            ),
            // BlocBuilder<ExampleBloc, ExampleState>(
            //   builder: (context, state) {
            //     if (state is! ExampleStateData) {
            //       return const SizedBox.shrink();
            //     }
            //     return ListView.builder(
            //       shrinkWrap: true,
            //       itemCount: state.name.length,
            //       itemBuilder: (context, index) {
            //         final name = state.name[index];
            //         return ListTile(
            //           title: Text(name),
            //         );
            //       },
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
