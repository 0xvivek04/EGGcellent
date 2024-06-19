import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tem_component_model.dart';
export 'tem_component_model.dart';

class TemComponentWidget extends StatefulWidget {
  const TemComponentWidget({super.key});

  @override
  State<TemComponentWidget> createState() => _TemComponentWidgetState();
}

class _TemComponentWidgetState extends State<TemComponentWidget>
    with TickerProviderStateMixin {
  late TemComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemComponentModel());

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
                      'assets/images/output-temp.gif',
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
                      'assets/images/output-humid.gif',
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
                        'dt4wf2vz' /* Temperature */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    random_data.randomInteger(22, 44).toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'lfg26vah' /* °C */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
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
                        '579diojy' /* Humidity */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    random_data.randomInteger(20, 35).toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'eaqs5w06' /* % */,
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
      ],
    ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
  }
}
