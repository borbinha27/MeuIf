import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'autorizaao_model.dart';
export 'autorizaao_model.dart';

/// Crie um componente com esse codigo
/// import '/flutter_flow/flutter_flow_icon_button.dart';
/// import '/flutter_flow/flutter_flow_theme.dart';
/// import 'package:flutter/material.dart';
/// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
///
/// class AutorizacoesButton extends StatelessWidget {
///   const AutorizacoesButton({
///     super.key,
///     required this.onPressed,
///   });
///
///   final VoidCallback onPressed;
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
///             alignment: AlignmentDirectional(0.0, -1.0),
///             child: FlutterFlowIconButton(
///               borderRadius: 50.0,
///               buttonSize: 144.7,
///               fillColor: Colors.white,
///               icon: FaIcon(
///                 FontAwesomeIcons.tasks,
///                 color: Colors.black,
///                 size: 50.0,
///               ),
///               onPressed: onPressed,
///             ),
///           ),
///           Align(
///             alignment: AlignmentDirectional(0.0, 0.8),
///             child: Text(
///               'Autorizações',
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
class AutorizaaoWidget extends StatefulWidget {
  const AutorizaaoWidget({super.key});

  @override
  State<AutorizaaoWidget> createState() => _AutorizaaoWidgetState();
}

class _AutorizaaoWidgetState extends State<AutorizaaoWidget> {
  late AutorizaaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutorizaaoModel());

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
            alignment: AlignmentDirectional(0.0, -1.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 50.0,
              borderWidth: 1.0,
              buttonSize: 144.7,
              fillColor: Colors.white,
              icon: Icon(
                Icons.task,
                color: Colors.black,
                size: 50.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.8),
            child: Text(
              'Autorizações',
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
