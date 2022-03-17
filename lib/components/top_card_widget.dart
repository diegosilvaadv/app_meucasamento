import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCardWidget extends StatefulWidget {
  const TopCardWidget({
    Key key,
    this.pageTitle,
  }) : super(key: key);

  final String pageTitle;

  @override
  _TopCardWidgetState createState() => _TopCardWidgetState();
}

class _TopCardWidgetState extends State<TopCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).pageBackground,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/topBg@2x.png',
          ).image,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 44, 16, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 44,
                  fillColor: FlutterFlowTheme.of(context).lightText,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).grayIcon,
                    size: 24,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Text(
                    widget.pageTitle,
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
