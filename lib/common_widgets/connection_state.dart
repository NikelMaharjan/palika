import 'package:lottie/lottie.dart';

import '../export_pages.dart';

class ConnectionStatePage extends ConsumerStatefulWidget {
  final dynamic provider;
  const ConnectionStatePage(this.provider, {super.key});

  @override
  ConsumerState<ConnectionStatePage> createState() =>
      _ConnectionStatePageState();
}

class _ConnectionStatePageState extends ConsumerState<ConnectionStatePage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(connectionProvider, (previous, next) {
      if (next == ConnectivityStatus.ON) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.refresh(widget.provider);
        });
      }
      // else if( previous == ConnectivityStatus.OFF){
      //   ref.refresh(widget.provider);
      // }
    });
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).padding.top + kToolbarHeight;
    final h = MediaQuery.of(context).size.height - height;

    return Consumer(builder: (context, ref, child) {
      final connection = ref.watch(connectionProvider);
      return SizedBox(
          height: h,
          child: Column(
            children: [
              Expanded(
                child: Lottie.asset(
                    'assets/12955-no-internet-connection-empty-state.json'),
              ),
              SizedBox(
                height: h * 0.2,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      connection == ConnectivityStatus.ON ? 'Connection Resume' : 'Check your connection',
                      style: TextStyle(
                          fontSize: 20,
                          color: connection == ConnectivityStatus.ON ? Colors.green : Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          ref.refresh(widget.provider);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.refresh),
                            ),
                            Text('Reload'),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ));
    });
  }
}
