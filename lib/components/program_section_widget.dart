import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramSectionWidget extends StatefulWidget {
  const ProgramSectionWidget({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);

  final String title;
  final String body;

  @override
  _ProgramSectionWidgetState createState() => _ProgramSectionWidgetState();
}

class _ProgramSectionWidgetState extends State<ProgramSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.title,
                style: FlutterFlowTheme.of(context).subtitle2,
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                  child: Text(
                    widget.body,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Cormorant Garamond',
                          color: FlutterFlowTheme.of(context).darkText,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2,
          thickness: 1,
          indent: 12,
          endIndent: 12,
          color: FlutterFlowTheme.of(context).lightLines,
        ),
      ],
    );
  }
}
