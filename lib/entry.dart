library entry.dart;

import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Entry.
class Entry extends StatefulWidget {
  final AppRouter router;
  final Widget child;

  const Entry(this.router, {Key? key, required this.child}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  void initState() {
    context.read<AuthWatcherCubit>().getCountries(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthWatcherCubit, AuthWatcherState>(
          listenWhen: (p, c) =>
              p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
              (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
          listener: (c, s) => s.status.fold(
            () => null,
            (it) => it?.response.mapOrNull(
              info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(
                widget.router.navigatorKey.currentContext ?? context,
              ),
              error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(
                widget.router.navigatorKey.currentContext ?? context,
              ),
            ),
          ),
        ),
      ],
      child: Utils.setup(
        context,
        widget.router,
        ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: () => widget.child,
        ),
      ),
    );
  }
}
