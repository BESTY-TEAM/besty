import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
       child: Text(
        "ProfileScreen"
        ),
      )
    );
  }
}

/*
import 'dart:async';
import 'package:besty/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';


class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);

  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}

class OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(3.866667, 11.516667);
  static const LatLng destination = LatLng(3.514420, 11.507757);
  List<LatLng> polylineCoordinates = [];
  LocationData?  currentLocation;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then((location) {
      currentLocation = location;
      
      setState(() {

      });
    },
    );

    GoogleMapController googleMapController = await _controller.future;

    location.onLocationChanged.listen((newLoc) {
      currentLocation = newLoc;

      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              zoom: 13.5,
              target: LatLng(
                newLoc.latitude!,
                newLoc.longitude!,
              ),
          ),
        ),
      );

      setState(() {

      });
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude)
    );

    if(result.points.isNotEmpty){
      result.points.forEach(
            (
              PointLatLng point
            ) => polylineCoordinates.add(
              LatLng(point.latitude, point.longitude,
              ),
            ),
      );
      setState(() {

      });
    }

  }

  void setCustomMarkerIcon(){
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "assets/Pin_source.png").then(
            (icon) {
      sourceIcon = icon;
    });
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "assets/Pin_destination.png").then(
            (icon) {
      destinationIcon = icon;
    });
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "assets/Badge.png").then(
            (icon) {
      currentLocationIcon = icon;
    });
  }

  @override
  void initState() {
    setCustomMarkerIcon();
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Track order",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',

            ),
          ),
        ),
      ),
      bottomNavigationBar: const RiderInfo(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(Icons.gps_fixed),
        ),
      body: Center(
        child: currentLocation == null ? const Center(
          child: Text(
            "Loading..."
          ),
        ): GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5
            ),
          polylines: {
            Polyline(polylineId: PolylineId("route"),
                points: polylineCoordinates,
              color: kPrimaryColor,
              width: 6,
            ),
          },
          markers: {
              Marker(
                  markerId: MarkerId("currentLocation"),
                icon: currentLocationIcon,
                position: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
              ),
            Marker(
                  markerId: MarkerId("source"),
                icon: sourceIcon,
                position: sourceLocation
              ),
              Marker(
                    markerId: MarkerId("destination"),
                  icon: destinationIcon,
                  position: destination,
              ),
          },
          onMapCreated: (mapController) {
              _controller.complete(mapController);
          },
        ),
      ),
    );
  }
}


class RiderInfo extends StatelessWidget {
  const RiderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
        decoration: BoxDecoration(
          //color: Colors.white,
          //backgroundBlendMode: BlendMode.color,
        ),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage("assets/user_7.png"),
          ),
          title: const Text(
            "Tizi Bienvenus",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              //color: kContentColorLightTheme,
            ),
          ),
          subtitle: const Text("860m - 28min"),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: const CircleBorder(),
              minimumSize: const Size(48, 48),
            ),
            onPressed: () {},
            child: SvgPicture.asset(
              "assets/icons/chat.svg",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
 */