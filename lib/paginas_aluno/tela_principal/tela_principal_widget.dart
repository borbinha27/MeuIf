import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tela_principal_model.dart';
export 'tela_principal_model.dart';

/// Pagina Inicial
class TelaPrincipalWidget extends StatefulWidget {
  const TelaPrincipalWidget({super.key});

  static String routeName = 'TelaPrincipal';
  static String routePath = '/telaPrincipal';

  @override
  State<TelaPrincipalWidget> createState() => _TelaPrincipalWidgetState();
}

class _TelaPrincipalWidgetState extends State<TelaPrincipalWidget> {
  late TelaPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaPrincipalModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().PrimeiraTela && FFAppState().PrimeiraTelaSolucao) {
        context.pushNamed(TelaCarteirinhaWidget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          endDrawer: Drawer(
            elevation: 16.0,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(36.0, 0.0, 36.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    if (FFAppState().userType == 'aluno')
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.37,
                              height: MediaQuery.sizeOf(context).height * 0.16,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 50.0,
                                      buttonSize: 144.7,
                                      fillColor: Colors.white,
                                      icon: Icon(
                                        Icons.qr_code_2_rounded,
                                        color: Colors.black,
                                        size: 75.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().carterinhaGambiarra = true;
                                        safeSetState(() {});

                                        context.pushNamed(
                                            TelaCarteirinhaWidget.routeName);
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.8),
                                    child: Text(
                                      'Carteirinha',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: SizedBox(
                                height: 100.0,
                                child: VerticalDivider(
                                  width: 33.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.37,
                              height: MediaQuery.sizeOf(context).height * 0.16,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 50.0,
                                      buttonSize:
                                          MediaQuery.sizeOf(context).width *
                                              0.4,
                                      fillColor: Colors.white,
                                      icon: Icon(
                                        Icons.person_sharp,
                                        color: Colors.black,
                                        size: 70.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().carterinhaGambiarra =
                                            false;
                                        safeSetState(() {});

                                        context.pushNamed(
                                            TelaCarteirinhaWidget.routeName);
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.8),
                                    child: Text(
                                      'Perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.37,
                            height: MediaQuery.sizeOf(context).height * 0.16,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 50.0,
                                    buttonSize: 144.7,
                                    fillColor: Colors.white,
                                    icon: Icon(
                                      Icons.local_dining,
                                      color: Colors.black,
                                      size: 70.0,
                                    ),
                                    onPressed: () async {
                                      if (FFAppState().userType == 'aluno') {
                                        context.pushNamed(
                                            TelaPnaeWidget.routeName);
                                      } else {
                                        context.pushNamed(
                                            TelaLanchePNAESepaeWidget
                                                .routeName);
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.8),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Aguarde, funções em construção',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 2500),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .verdeIfpr,
                                        ),
                                      );
                                    },
                                    child: Text(
                                      ' PNAE',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: SizedBox(
                              height: 100.0,
                              child: VerticalDivider(
                                width: 33.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.37,
                            height: MediaQuery.sizeOf(context).height * 0.16,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 50.0,
                                    buttonSize: 144.7,
                                    fillColor: Colors.white,
                                    icon: FaIcon(
                                      FontAwesomeIcons.tasks,
                                      color: Colors.black,
                                      size: 50.0,
                                    ),
                                    onPressed: () async {
                                      if (FFAppState().userType == 'aluno') {
                                        context.pushNamed(
                                            TelaAutorizacoesWidget.routeName);
                                      } else {
                                        context.pushNamed(
                                            TelaPermicaoEntradaSaidaSepaeWidget
                                                .routeName);
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.8),
                                  child: Text(
                                    'Autorizações',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.37,
                            height: MediaQuery.sizeOf(context).height * 0.16,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 50.0,
                                    buttonSize: 144.7,
                                    fillColor: Colors.white,
                                    icon: Icon(
                                      Icons.pin_drop,
                                      color: Colors.black,
                                      size: 65.0,
                                    ),
                                    onPressed: () async {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Aguarde, funções em construção',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 2500),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .verdeIfpr,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.8),
                                  child: Text(
                                    'Achados',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: SizedBox(
                              height: 100.0,
                              child: VerticalDivider(
                                width: 33.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.37,
                            height: MediaQuery.sizeOf(context).height * 0.16,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 50.0,
                                    buttonSize: 144.7,
                                    fillColor: Colors.white,
                                    icon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                      size: 65.0,
                                    ),
                                    onPressed: () async {
                                      if (FFAppState().userType ==
                                          '\"aluno\"') {
                                        context.pushNamed(
                                            TelaAgendaWidget.routeName);
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.8),
                                  child: Text(
                                    'Agenda',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    if ((FFAppState().userType == 'aluno') ||
                        (FFAppState().userType == 'liderDaTurma'))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.37,
                              height: MediaQuery.sizeOf(context).height * 0.16,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 50.0,
                                      buttonSize: 144.7,
                                      fillColor: Colors.white,
                                      icon: FaIcon(
                                        FontAwesomeIcons.chartPie,
                                        color: Colors.black,
                                        size: 65.0,
                                      ),
                                      onPressed: () async {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Aguarde, funções em construção',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 2500),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .verdeIfpr,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.8),
                                    child: Text(
                                      'Frequencia',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: SizedBox(
                                height: 100.0,
                                child: VerticalDivider(
                                  width: 33.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.37,
                              height: MediaQuery.sizeOf(context).height * 0.16,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 50.0,
                                      buttonSize: 144.7,
                                      fillColor: Colors.white,
                                      icon: Icon(
                                        Icons.create_new_folder,
                                        color: Colors.black,
                                        size: 65.0,
                                      ),
                                      onPressed: () async {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Aguarde, funções em construção',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 2500),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .verdeIfpr,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.8),
                                    child: Text(
                                      'Boletim',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
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
          ),
        ),
      ),
    );
  }
}
