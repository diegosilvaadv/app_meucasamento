import '../components/top_card_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransportationPageWidget extends StatefulWidget {
  const TransportationPageWidget({Key key}) : super(key: key);

  @override
  _TransportationPageWidgetState createState() =>
      _TransportationPageWidgetState();
}

class _TransportationPageWidgetState extends State<TransportationPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lightText,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TopCardWidget(
              pageTitle: 'Transportation',
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(
                    'assets/images/wedding_car.svg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Text(
                      'By Car',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Dancing Script',
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Fly into Boston Logan Airport! If you\'re taking a train like Amtrak, get off at South Station to end up right downtown. Both the airport and train station are on the MBTA (aka \"The T\"), so you can get around the Boston area from there.\n\nTo get to our venue in Lincoln, MA, we recommend renting a car or carpooling. If you plan to take an Uber or Lyft, we recommend scheduling a ride back since there may be limited drivers in that area on Saturday night (here\'s how to schedule an Uber).',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Cormorant Garamond',
                            color: FlutterFlowTheme.of(context).darkText,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(
                    'assets/images/icons_Plane.svg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Text(
                      'By Plane',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Dancing Script',
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Fly into Boston Logan Airport! If you\'re taking a train like Amtrak, get off at South Station to end up right downtown. Both the airport and train station are on the MBTA (aka \"The T\"), so you can get around the Boston area from there.\n\nTo get to our venue in Lincoln, MA, we recommend renting a car or carpooling. If you plan to take an Uber or Lyft, we recommend scheduling a ride back since there may be limited drivers in that area on Saturday night (here\'s how to schedule an Uber).\n\nTo get to our house in Malden for Sunday brunch, take the Orange Line north to Malden Center, and walk for about 10 minutes! Since it\'s Sunday, there will also be free street parking available in the area. Our address is 20 Park View Terrace, Malden, MA 02148.',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Cormorant Garamond',
                            color: FlutterFlowTheme.of(context).darkText,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SvgPicture.asset(
                    'assets/images/icons_accomodations.svg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Text(
                      'Accomodations',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Dancing Script',
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 44),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Fly into Boston Logan Airport! If you\'re taking a train like Amtrak, get off at South Station to end up right downtown. Both the airport and train station are on the MBTA (aka \"The T\"), so you can get around the Boston area from there.\n\nTo get to our venue in Lincoln, MA, we recommend renting a car or carpooling. If you plan to take an Uber or Lyft, we recommend scheduling a ride back since there may be limited drivers in that area on Saturday night (here\'s how to schedule an Uber).\n\nTo get to our house in Malden for Sunday brunch, take the Orange Line north to Malden Center, and walk for about 10 minutes! Since it\'s Sunday, there will also be free street parking available in the area. Our address is 20 Park View Terrace, Malden, MA 02148.',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Cormorant Garamond',
                            color: FlutterFlowTheme.of(context).darkText,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
