import 'package:flutter/material.dart';

class KScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body;
  final bool isBottomResize;
  final bool fullscreen;

  const KScaffold({
    super.key,
    this.appBar,
    this.body,
    this.isBottomResize = true,
    this.fullscreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: isBottomResize,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (fullscreen) {
      return _buildLoader(context);
    } else {
      return SafeArea(child: _buildLoader(context));
    }
  }

  Widget _buildLoader(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // DOUBT
      },
      child: body,
    );
  }
}
