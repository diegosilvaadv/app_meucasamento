import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeroWidget extends StatefulWidget {
  const MainHeroWidget({Key key}) : super(key: key);

  @override
  _MainHeroWidgetState createState() => _MainHeroWidgetState();
}

class _MainHeroWidgetState extends State<MainHeroWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        scale: 0.8,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lightText,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x2D000000),
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'assets/images/allison-heine-_5_85Zqqsm4-unsplash.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    ).animated([animationsMap['containerOnPageLoadAnimation']]);
  }
}
