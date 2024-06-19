import '/components/electric_usage_component_widget.dart';
import '/components/gas_comp_widget.dart';
import '/components/tem_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget>
    with TickerProviderStateMixin {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());

    animationsMap.addAll({
      'gasCompOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'electricUsageComponentOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'temComponentOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
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
        backgroundColor: const Color(0xFFDFE0E3),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Screenshot_2024-05-02_215826-removebg-preview.png',
                              width: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'ProfileSettings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 250),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/4db86117b599dd7954c4f605195ad504.jpg',
                                ).image,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF828282),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(6.0, 8.0, 6.0, 3.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 769.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        children: [
                          Stack(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            children: [
                              Opacity(
                                opacity: 0.9,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.17),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: wrapWithModel(
                                            model: _model.gasCompModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const GasCompWidget(),
                                          ).animateOnPageLoad(animationsMap[
                                              'gasCompOnPageLoadAnimation']!),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.39),
                                        child: GradientText(
                                          FFLocalizations.of(context).getText(
                                            '5gblhrkr' /* Level Checks */,
                                          ),
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                            FlutterFlowTheme.of(context)
                                                .primaryText
                                          ],
                                          gradientDirection:
                                              GradientDirection.ltr,
                                          gradientType: GradientType.linear,
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.39),
                                        child: GradientText(
                                          FFLocalizations.of(context).getText(
                                            'o1odzyqw' /* Level Checks */,
                                          ),
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                            FlutterFlowTheme.of(context)
                                                .primaryText
                                          ],
                                          gradientDirection:
                                              GradientDirection.ltr,
                                          gradientType: GradientType.linear,
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.44),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: wrapWithModel(
                                    model: _model.electricUsageComponentModel,
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: const Hero(
                                      tag: '',
                                      transitionOnUserGestures: true,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: ElectricUsageComponentWidget(),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'electricUsageComponentOnPageLoadAnimation']!),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.01, 0.18),
                                child: SelectionArea(
                                    child: GradientText(
                                  FFLocalizations.of(context).getText(
                                    'knxiivz3' /* Power Usage */,
                                  ),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).primaryText
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                )).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -0.86),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: wrapWithModel(
                                    model: _model.temComponentModel,
                                    updateCallback: () => setState(() {}),
                                    child: const TemComponentWidget(),
                                  ).animateOnPageLoad(animationsMap[
                                      'temComponentOnPageLoadAnimation']!),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.04, -0.95),
                                child: GradientText(
                                  FFLocalizations.of(context).getText(
                                    'j6by4z75' /* Environment */,
                                  ),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).primaryText
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation4']!),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.04, -0.95),
                                child: GradientText(
                                  FFLocalizations.of(context).getText(
                                    'ecr5sj8j' /* Environment */,
                                  ),
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).primaryText
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation5']!),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
