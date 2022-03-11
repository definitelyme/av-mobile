library terms_page.dart;

import 'package:flutter/material.dart';

/// A stateful widget to render TermsPage.
class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage>
    with AutomaticKeepAliveClientMixin<TermsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return const Center(
      child: Text('Screen Template for TermsPage'),
    );
  }
}
