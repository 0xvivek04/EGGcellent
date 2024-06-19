import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'onb_model.dart';
export 'onb_model.dart';

class OnbWidget extends StatefulWidget {
  const OnbWidget({super.key});

  @override
  State<OnbWidget> createState() => _OnbWidgetState();
}

class _OnbWidgetState extends State<OnbWidget> with TickerProviderStateMixin {
  late OnbModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnbModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, -80.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3200.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -80.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              child: Container(
                width: double.infinity,
                height: 420.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: MasonryGridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: 11,
                        itemBuilder: (context, index) {
                          return [
                            () => ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1589922583749-6b8473a85048?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1589731234361-36258f083832?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/32/600',
                                    width: 100.0,
                                    height: 0.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1548550023-2bdb3c5beed7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 80.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1538170989343-ce003278e1a3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1618346146499-5a503b5e4893?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8cG91bHRyeXxlbnwwfHx8fDE3MTQ2Nzg2NjF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1589923188651-268a9765e432?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1506976785307-8732e854ad03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxwb3VsdHJ5fGVufDB8fHx8MTcxNDY3ODY2MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1578051696754-4652a8f67882?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8cG91bHRyeXxlbnwwfHx8fDE3MTQ2Nzg2NjF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1598016717029-026340d417d4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8cG91bHRyeXxlbnwwfHx8fDE3MTQ2Nzg2NjF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/32/600',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          ][index]();
                        },
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 670.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 230.0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 50.0),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'dh05wf9k' /* EGGcellent */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'a8kw4z8x' /* See the conditions of your bar... */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '2zxul7lu' /* EGGcellent */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation3']!),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'sqf4ymvg' /* Control your devices just from... */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation4']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'rue01cz8' /* EGGcellent */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation5']!),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '13j7kjum' /* Made in India 🇮🇳 */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation6']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 3.0,
                                    spacing: 8.0,
                                    radius: 16.0,
                                    dotWidth: 8.0,
                                    dotHeight: 8.0,
                                    dotColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Login');
                          },
                          text: FFLocalizations.of(context).getText(
                            'xd0zexqa' /* Next */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 4.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 44.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Login');
                          },
                          text: FFLocalizations.of(context).getText(
                            'r1f6060u' /* Skip */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                            hoverColor: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
