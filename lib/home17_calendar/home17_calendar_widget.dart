import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home17_calendar_model.dart';
export 'home17_calendar_model.dart';

class Home17CalendarWidget extends StatefulWidget {
  const Home17CalendarWidget({super.key});

  static String routeName = 'Home17Calendar';
  static String routePath = '/home17Calendar';

  @override
  State<Home17CalendarWidget> createState() => _Home17CalendarWidgetState();
}

class _Home17CalendarWidgetState extends State<Home17CalendarWidget> {
  late Home17CalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Home17CalendarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.listagem = await AutorizacoesGroup.listarAutorizacaoCall.call(
        token: currentJwtToken,
      );

      if ((_model.listagem?.succeeded ?? true)) {
        _model.entradasSaidas = (getJsonField(
          (_model.listagem?.jsonBody ?? ''),
          r'''$.nome''',
          true,
        ) as List?)!
            .map<String>((e) => e.toString())
            .toList()
            .cast<String>()
            .toList()
            .cast<String>();
        safeSetState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Listagem bem sucedida',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            duration: Duration(milliseconds: 2500),
            backgroundColor: FlutterFlowTheme.of(context).verdeIfpr,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Erro!Contatar suporte',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            duration: Duration(milliseconds: 2500),
            backgroundColor: FlutterFlowTheme.of(context).verdeIfpr,
          ),
        );
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterFlowCalendar(
              color: FlutterFlowTheme.of(context).verdeIfpr,
              weekFormat: true,
              weekStartsMonday: false,
              rowHeight: 48.0,
              onChange: (DateTimeRange? newSelectedDate) {
                safeSetState(
                    () => _model.calendarSelectedDay = newSelectedDate);
              },
              titleStyle: FlutterFlowTheme.of(context).titleLarge.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
              dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                  ),
              dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
              selectedDateStyle: FlutterFlowTheme.of(context)
                  .titleSmall
                  .override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              inactiveDateStyle: FlutterFlowTheme.of(context)
                  .labelMedium
                  .override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
              locale: FFLocalizations.of(context).languageCode,
            ),
            Builder(
              builder: (context) {
                final entradasEsaidas = _model.entradasSaidas.toList();
                if (entradasEsaidas.isEmpty) {
                  return Image.asset(
                    'assets/images/ifpr_logo.jpg',
                  );
                }

                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: entradasEsaidas.length,
                  separatorBuilder: (_, __) => SizedBox(height: 1.0),
                  itemBuilder: (context, entradasEsaidasIndex) {
                    final entradasEsaidasItem =
                        entradasEsaidas[entradasEsaidasIndex];
                    return Container(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                      height: MediaQuery.sizeOf(context).height * 0.03,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          entradasEsaidasItem,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
