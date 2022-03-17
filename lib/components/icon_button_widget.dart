import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({
    Key key,
    this.title,
    this.iconImage,
  }) : super(key: key);

  final String title;
  final String iconImage;

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: 110,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lightText,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x3E000000),
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.iconImage,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Text(
                widget.title,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
