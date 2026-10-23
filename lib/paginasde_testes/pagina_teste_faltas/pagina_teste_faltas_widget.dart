import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagina_teste_faltas_model.dart';
export 'pagina_teste_faltas_model.dart';

class PaginaTesteFaltasWidget extends StatefulWidget {
  const PaginaTesteFaltasWidget({super.key});

  static String routeName = 'PaginaTesteFaltas';
  static String routePath = '/paginaTesteFaltas';

  @override
  State<PaginaTesteFaltasWidget> createState() =>
      _PaginaTesteFaltasWidgetState();
}

class _PaginaTesteFaltasWidgetState extends State<PaginaTesteFaltasWidget> {
  late PaginaTesteFaltasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaTesteFaltasModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).verdeIfpr,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x2D101213),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).info,
                        icon: Icon(
                          Icons.calendar_month,
                          color: FlutterFlowTheme.of(context).verdeIfpr,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          await showModalBottomSheet<bool>(
                              context: context,
                              builder: (context) {
                                final _datePickedCupertinoTheme =
                                    CupertinoTheme.of(context);
                                return ScrollConfiguration(
                                  behavior:
                                      const MaterialScrollBehavior().copyWith(
                                    dragDevices: {
                                      PointerDeviceKind.mouse,
                                      PointerDeviceKind.touch,
                                      PointerDeviceKind.stylus,
                                      PointerDeviceKind.unknown
                                    },
                                  ),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    width: MediaQuery.of(context).size.width,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    child: CupertinoTheme(
                                      data: _datePickedCupertinoTheme.copyWith(
                                        textTheme: _datePickedCupertinoTheme
                                            .textTheme
                                            .copyWith(
                                          dateTimePickerTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                        ),
                                      ),
                                      child: CupertinoDatePicker(
                                        mode: CupertinoDatePickerMode.date,
                                        minimumDate: getCurrentTimestamp,
                                        initialDateTime: getCurrentTimestamp,
                                        maximumDate: DateTime(2050),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        use24hFormat: false,
                                        onDateTimeChanged: (newDateTime) =>
                                            safeSetState(() {
                                          _model.datePicked = newDateTime;
                                        }),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(TelaAchadoWidget.routeName);
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.965,
                    height: 180.21,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x35000000),
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 1.0,
                      ),
                    ),
                    child: Container(
                      width: 370.0,
                      height: 444.1,
                      child: FlutterFlowBarChart(
                        barData: [
                          FFBarChartData(
                            yData: List.generate(
                                random_data.randomInteger(5, 5),
                                (index) => random_data.randomInteger(0, 10)),
                            color: FlutterFlowTheme.of(context).verdeIfpr,
                            borderWidth: 1.0,
                          )
                        ],
                        xLabels: List.generate(random_data.randomInteger(5, 5),
                                (index) => random_data.randomInteger(0, 10))
                            .map((e) => e.toString())
                            .toList(),
                        barWidth: 40.0,
                        barBorderRadius: BorderRadius.circular(0.0),
                        groupSpace: 8.0,
                        alignment: BarChartAlignment.spaceAround,
                        chartStylingInfo: ChartStylingInfo(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          showBorder: false,
                        ),
                        axisBounds: AxisBounds(),
                        xAxisLabelInfo: AxisLabelInfo(
                          reservedSize: 28.0,
                        ),
                        yAxisLabelInfo: AxisLabelInfo(
                          reservedSize: 42.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
