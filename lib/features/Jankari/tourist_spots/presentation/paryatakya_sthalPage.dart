import 'dart:async';
import 'package:palikaa/export_pages.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class ParyaTakiyaPage extends StatefulWidget {
  final  double? lat;
  final  double? long;
  const ParyaTakiyaPage({super.key, this.long,this.lat});

  @override
  State<ParyaTakiyaPage> createState() => _ParyaTakiyaPageState();
}

class _ParyaTakiyaPageState extends State<ParyaTakiyaPage>  with AutomaticKeepAliveClientMixin<ParyaTakiyaPage> {
  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _markers = {};

  void _onMapCreate(){
    setState(() {
      _markers.addAll(
          [
            Marker(
                markerId: MarkerId('id_1'),
                position: LatLng(widget.lat ?? 37.42796133580664, widget.long?? -122.085749655962),
                infoWindow: InfoWindow(
                  snippet: 'Your Location',
                )
            ),


          ]
      );
    });

  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text('पर्यटकीय स्थल', style: TextStyle(fontSize: 15.sp,
                  color: labelBlack,
                  fontFamily: 'Poppins', fontWeight: FontWeight.w500),),),
            gapH10,
            SizedBox(
              height: 190.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: dashData.length,
                  itemBuilder: (context, index){
                    final place = dashData[index];
                    return index == 0 ?Container(
                      margin: EdgeInsets.only(left: 10.w),
                      height: 200.w,
                      width: 200.w,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                             Image.asset(place.imagePath!,
                               height: 140.w,
                               fit: BoxFit.cover,),
                            SizedBox(height: 11.h,),
                            Text(place.label,
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins'),),
                          gapH2,
                            // Text(place.address,
                            //   style: TextStyle(fontSize: 12.sp,
                            //       fontWeight: FontWeight.w500,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFF414141)),),
                          ],
                        ),
                      ),
                    ):  SizedBox(
                      height: 200.w,
                      width: 200.w,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Image.asset(place.imagePath!,
                              height: 140.w,
                              fit: BoxFit.cover,),
                            SizedBox(height: 11.h,),
                            Text(place.label,
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                              ),),
                            gapH2,
                            // Text(place.address,
                            //   style: TextStyle(fontSize: 12.sp,
                            //       fontWeight: FontWeight.w500,
                            //       fontFamily: 'Poppins',
                            //       color: Color(0xFF414141)),),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 19.w),
                margin: EdgeInsets.only(top: 20.h),
                child: GoogleMap(
                  markers: _markers,
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(widget.lat ?? 37.42796133580664,widget.long?? -122.085749655962),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                      _onMapCreate();
                      _controller.complete(controller);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}








class MapSample extends StatefulWidget {
  final  double? lat;
  final  double? long;
  MapSample({this.long,this.lat});
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> with AutomaticKeepAliveClientMixin<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _markers = {};

  void _onMapCreate(){
    setState(() {
      _markers.addAll(
          [
            Marker(
                markerId: MarkerId('id_1'),
                position: LatLng(widget.lat ?? 37.42796133580664, widget.long?? -122.085749655962),
                infoWindow: InfoWindow(
                    snippet: 'Your Location',
                )
            ),


          ]
      );
    });

  }
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return  WillPopScope(
      onWillPop: ()async{
        print(_controller.isCompleted);
        if(_controller.isCompleted){
          return true;
        }else{
          return false;
        }
      },
      child: Scaffold(
        body: GoogleMap(
          markers: _markers,
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(widget.lat ?? 37.42796133580664,widget.long?? -122.085749655962),
            zoom: 14.4746,
          ),
          onMapCreated: (GoogleMapController controller) {

            _onMapCreate();
            _controller.complete(controller);

          },
        ),

      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
