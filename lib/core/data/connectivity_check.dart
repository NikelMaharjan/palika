import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


enum ConnectivityStatus{
  ON,
  OFF,
  CHECK
}


final connectionProvider = StateNotifierProvider<ConnectivityProvider, ConnectivityStatus>((ref) => ConnectivityProvider(ref));
class ConnectivityProvider extends StateNotifier<ConnectivityStatus>{

  ConnectivityStatus? connectivityStatus;
  StreamController<ConnectivityResult> status = StreamController<ConnectivityResult>();
StateNotifierProviderRef ref;
  ConnectivityProvider(this.ref) : super(ConnectivityStatus.CHECK) {
    connectivityStatus = ConnectivityStatus.CHECK;
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async {
      status.add(result);
      if (result == ConnectivityResult.none) {
        // Get.snackbar('No Internet Connection', 'Check your Connection',
        //     snackPosition: SnackPosition.BOTTOM,
        //     borderRadius: 0,
        //     colorText: Colors.white,
        //     backgroundColor: Colors.blueGrey,
        //     shouldIconPulse: false,
        //     icon: Icon(Icons.wifi_off, color: Colors.white, size: 40, )
        // );
        state = ConnectivityStatus.OFF;
      } else {
        await _updateConnectionStatus().then((ConnectivityStatus isConnected) {
          state = isConnected;
        });
      }

    });
  }

  Future<ConnectivityStatus> _updateConnectionStatus() async {
    ConnectivityStatus connectivityStatus;
    try {
      final List<InternetAddress> result =
      await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        // Get.snackbar('Connected', 'You\'re online',
        //     snackPosition: SnackPosition.BOTTOM,
        //     colorText: Colors.white,
        //     backgroundColor: Colors.blueGrey,
        //     shouldIconPulse: false,
        //     padding: EdgeInsets.all(20),
        //     icon: Icon(Icons.wifi, color: Colors.green, size: 40, )
        // );
        connectivityStatus = ConnectivityStatus.ON;
      }else{
        // Get.snackbar('No Internet Connection',
        //     'Check your Connection',
        //     snackPosition: SnackPosition.BOTTOM,
        //     colorText: Colors.white,
        //     backgroundColor: Colors.blueGrey,
        //     shouldIconPulse: false,
        //     padding: EdgeInsets.all(20),
        //     icon: Icon(Icons.wifi_off, color: Colors.white, size: 40, )
        // );
        connectivityStatus =  ConnectivityStatus.OFF;
      }
    } on SocketException catch (_) {
      // Get.snackbar('No Internet Connection', 'Check your Connection',
      //     snackPosition: SnackPosition.BOTTOM,
      //     colorText: Colors.white,
      //     backgroundColor: Colors.blueGrey,
      //     shouldIconPulse: false,
      //     padding: EdgeInsets.all(20),
      //     icon: Icon(Icons.wifi_off, color: Colors.white, size: 40, )
      // );
      connectivityStatus =  ConnectivityStatus.OFF;
    }
    return connectivityStatus;
  }
}


