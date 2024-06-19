import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'gas_comp_model.dart';
export 'gas_comp_model.dart';

class GasCompWidget extends StatefulWidget {
  const GasCompWidget({super.key});

  @override
  State<GasCompWidget> createState() => _GasCompWidgetState();
}

class _GasCompWidgetState extends State<GasCompWidget>
    with TickerProviderStateMixin {
  late GasCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GasCompModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/output-wind.gif',
                      width: 44.0,
                      height: 44.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/output-warer.gif',
                      width: 44.0,
                      height: 44.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'iquh6yan' /* Gas Level */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    random_data.randomInteger(1000, 1073).toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'k1yvadbt' /* Water Level */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'g4511kl5' /* 0 */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
              width: 1.0,
            ),
          ),
        ),
      ],
    ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
  }
}
