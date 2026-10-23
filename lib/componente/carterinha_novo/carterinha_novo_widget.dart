import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'carterinha_novo_model.dart';
export 'carterinha_novo_model.dart';

/// Crie um componente usando esse codigo
/// import '/flutter_flow/flutter_flow_icon_button.dart';
/// import '/flutter_flow/flutter_flow_theme.dart';
/// import '/flutter_flow/flutter_flow_util.dart';
/// import '/index.dart';
/// import 'package:flutter/material.dart';
///
/// class CarteirinhaButton extends StatelessWidget {
///   const CarteirinhaButton({super.key});
///
///   @override
///   Widget build(BuildContext context) {
///     return Container(
///       width: MediaQuery.sizeOf(context).width * 0.37,
///       height: MediaQuery.sizeOf(context).height * 0.16,
///       decoration: BoxDecoration(
///         color: FlutterFlowTheme.of(context).secondaryBackground,
///         borderRadius: BorderRadius.circular(24.0),
///       ),
///       child: Stack(
///         children: [
///           Align(
///             alignment: AlignmentDirectional(0.0, 0.0),
///             child: FlutterFlowIconButton(
///               borderRadius: 50.0,
///               buttonSize: 144.7,
///               fillColor: Colors.white,
///               icon: Icon(
///                 Icons.qr_code_2_rounded,
///                 color: Colors.black,
///                 size: 75.0,
///               ),
///               onPressed: () async {
///                 FFAppState().carterinhaGambiarra = true;
///                 if (Navigator.canPop(context)) {
///                   context.pop();
///                 }
///                 context.pushNamed(TelaCarteirinhaWidget.routeName);
///               },
///             ),
///           ),
///           Align(
///             alignment: AlignmentDirectional(0.0, 0.8),
///             child: Text(
///               'Carteirinha',
///               style: FlutterFlowTheme.of(context).bodyMedium.override(
///                     font: 'Inter',
///                     fontWeight: FontWeight.w800,
///                     fontSize: 18.0,
///                   ),
///             ),
///           ),
///         ],
///       ),
///     );
///   }
/// }
class CarterinhaNovoWidget extends StatefulWidget {
  const CarterinhaNovoWidget({super.key});

  @override
  State<CarterinhaNovoWidget> createState() => _CarterinhaNovoWidgetState();
}

class _CarterinhaNovoWidgetState extends State<CarterinhaNovoWidget> {
  late CarterinhaNovoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarterinhaNovoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.37,
      height: MediaQuery.sizeOf(context).height * 0.16,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 50.0,
              borderWidth: 1.0,
              buttonSize: 144.7,
              fillColor: Colors.white,
              icon: Icon(
                Icons.qr_code_2_rounded,
                color: Colors.black,
                size: 75.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.8),
            child: Text(
              'Carteirinha',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
