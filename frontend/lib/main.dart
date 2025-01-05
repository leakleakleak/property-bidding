import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend/controller/services.dart';
import 'package:frontend/model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'string_helpers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserBidsCount? _userBidsCount;
  List<PropertyListing>? listOfPropertyListing;
  List<LatestBid>? listOfLatestBid;
  LatLng _latLng = const LatLng(0, 0);

  int propertyCount = 0;
  int currentIndex = 0;

  String streetAddress = '';
  String locationAdress = '';
  String marketValue = '\$40,000';

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  void getInitData() async {
    _userBidsCount = await fetchUserBids();
    listOfPropertyListing = await fetchPropertyListing();
    propertyCount = listOfPropertyListing?.length ?? 0;
    listOfLatestBid = await fetchLatestBids();
    _updateLocation(LatLng(listOfPropertyListing?[currentIndex].latitude ?? 0,
        listOfPropertyListing?.first.longitude ?? 0));
    setState(() {});
  }

  void _updateLocation(LatLng newLatLng) async {
    setState(() {
      _latLng = newLatLng;
    });

    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: newLatLng,
        zoom: 18.0, // Adjust zoom level as needed
        tilt: 45.0, // Adjust tilt for a 3D perspective
      ),
    ));
  }

  void nextProperty() {
    setState(() {
      currentIndex++;
      _latLng = LatLng(listOfPropertyListing?[currentIndex].latitude ?? 0,
          listOfPropertyListing?.first.longitude ?? 0);
      _updateLocation(_latLng);
    });
  }

  void prevProperty() {
    setState(() {
      currentIndex--;
      _latLng = LatLng(listOfPropertyListing?[currentIndex].latitude ?? 0,
          listOfPropertyListing?.first.longitude ?? 0);
      _updateLocation(_latLng);
    });
  }

  @override
  initState() {
    getInitData();
    streetAddress = '14 Flood St.';
    locationAdress = 'New Orleans, LA 70122';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double toolbarHeight = 150;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: toolbarHeight,
        flexibleSpace: DashboardData(
          listOfPropertyListing: listOfPropertyListing,
          listOfLatestBid: listOfLatestBid,
          marketValue: marketValue,
          userBidsCount: _userBidsCount,
          currentIndex: currentIndex,
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: CameraPosition(
              target: _latLng,
              zoom: 18.0,
            ),
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                markerId: const MarkerId("street_view_marker"),
                position: _latLng,
                onTap: () async {
                  final controller = await _controller.future;
                  controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: _latLng,
                      zoom: 18.0, // Simulate street-level zoom
                      tilt: 45.0, // Tilt for 3D perspective
                    ),
                  ));
                },
              ),
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.filled(
                    onPressed: currentIndex != 0 ? () => prevProperty() : null,
                    icon: const Icon(Icons.arrow_left),
                  ),
                  IconButton.filled(
                    onPressed: currentIndex != propertyCount - 1
                        ? () => nextProperty()
                        : null,
                    icon: const Icon(Icons.arrow_right),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DashboardData extends StatelessWidget {
  final List<PropertyListing>? listOfPropertyListing;
  final List<LatestBid>? listOfLatestBid;
  final int currentIndex;
  const DashboardData({
    super.key,
    required this.marketValue,
    required UserBidsCount? userBidsCount,
    this.listOfPropertyListing,
    required this.currentIndex,
    this.listOfLatestBid,
  }) : _userBidsCount = userBidsCount;

  final String marketValue;
  final UserBidsCount? _userBidsCount;

  @override
  Widget build(BuildContext context) {
    const textStyleHeader = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
    const textStyleLabel = TextStyle(
      fontSize: 9,
    );

    var winningBid =
        (listOfPropertyListing?[currentIndex].currentWinningBidAmount.toInt() ??
            0);
    var userLatestBid = (listOfLatestBid?[currentIndex].latestBid.toInt() ?? 0);

    dynamic outbiddedValue =
        winningBid > userLatestBid ? winningBid - userLatestBid : 0;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(.9)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.description),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Own', style: textStyleLabel),
                  Text(
                    listOfPropertyListing?[currentIndex].streetAddress ?? '',
                    style: textStyleHeader,
                  ),
                  Text(
                    listOfPropertyListing?[currentIndex].cityAddress ?? '',
                    style: textStyleLabel,
                  ),
                ],
              ),
              const Icon(Icons.location_on_rounded),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'To',
                    style: textStyleLabel,
                  ),
                  Text('Start', style: textStyleHeader),
                  Text('Place Deposit', style: textStyleLabel),
                ],
              ),
              const Icon(Icons.bookmark_rounded),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Market Value $marketValue', style: textStyleLabel),
                  const Text('\$5000', style: textStyleHeader),
                  const Text('Reserve Price', style: textStyleLabel),
                ],
              ),
              const Icon(Icons.other_houses_rounded),
            ],
          ),
        ),
        Container(
          height: 35,
          decoration: BoxDecoration(color: Colors.white.withOpacity(.6)),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      DisplayCountData(
                        title: 'Outbid',
                        textStyleLabel: textStyleLabel,
                        userBidsCount:
                            _userBidsCount?.outbidCounts.toString() ?? '',
                      ),
                      DisplayCountData(
                        title: 'Active',
                        textStyleLabel: textStyleLabel,
                        userBidsCount:
                            _userBidsCount?.activeCounts.toString() ?? '',
                      ),
                      DisplayCountData(
                        title: 'Winning',
                        textStyleLabel: textStyleLabel,
                        userBidsCount:
                            _userBidsCount?.winningBidCounts.toString() ?? '0',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    ...List.generate(
                      min(listOfPropertyListing?.length ?? 0,
                          listOfLatestBid?.length ?? 0),
                      (index) {
                        return ListingRow(
                          textStyle: textStyleLabel,
                          streetAddress:
                              listOfPropertyListing?[index].streetAddress ?? '',
                          previousBid: listOfPropertyListing?[index]
                                  .lastBidValue
                                  .toInt() ??
                              0,
                          activeBid: listOfLatestBid?[index].latestBid ?? 0,
                          winningBid: listOfPropertyListing?[index]
                                  .currentWinningBidAmount
                                  .toInt() ??
                              0,
                        );
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      DisplayCountData(
                        title: 'Winning',
                        textStyleLabel: textStyleLabel,
                        color: outbiddedValue == 0 ? Colors.green : null,
                        userBidsCount: formatWithCommasAndDollar(
                            listOfPropertyListing?[currentIndex]
                                    .currentWinningBidAmount
                                    .toInt() ??
                                0),
                      ),
                      DisplayCountData(
                        title: 'Active',
                        textStyleLabel: textStyleLabel,
                        color: Colors.grey,
                        userBidsCount: formatWithCommasAndDollar(
                            listOfLatestBid?[currentIndex].latestBid ?? 0),
                      ),
                      DisplayCountData(
                        title: 'Outbid',
                        textStyleLabel: textStyleLabel,
                        color: outbiddedValue != 0 ? Colors.red : Colors.grey,
                        userBidsCount:
                            formatWithCommasAndDollar(outbiddedValue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DisplayCountData extends StatelessWidget {
  const DisplayCountData({
    super.key,
    required this.title,
    required this.textStyleLabel,
    required String userBidsCount,
    this.color,
  }) : _userBidsCount = userBidsCount;

  final TextStyle textStyleLabel;
  final String _userBidsCount;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textStyleLabel.copyWith(
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                _userBidsCount,
                style: textStyleLabel.copyWith(
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListingRow extends StatelessWidget {
  final String streetAddress;
  final int previousBid;
  final TextStyle textStyle;
  final int winningBid;
  final int activeBid;
  const ListingRow({
    super.key,
    required this.streetAddress,
    required this.previousBid,
    required this.textStyle,
    required this.activeBid,
    required this.winningBid,
  });

  @override
  Widget build(BuildContext context) {
    final bool isTickUp =
        previousBid != 0 ? activeBid > previousBid : activeBid > winningBid;

    final bidDifference =
        isTickUp ? activeBid - previousBid : winningBid - activeBid;

    var tickColor = bidDifference == 0
        ? Colors.transparent
        : isTickUp
            ? Colors.green
            : Colors.red;
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isTickUp
                    ? Icons.arrow_drop_up_rounded
                    : Icons.arrow_drop_down_rounded,
                color: tickColor,
                size: 17,
              ),
              Text(
                streetAddress,
                style: textStyle.copyWith(fontWeight: FontWeight.w900),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formatWithCommasAndDollar(bidDifference),
                style: textStyle.copyWith(color: tickColor),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                formatWithCommasAndDollar(winningBid),
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
