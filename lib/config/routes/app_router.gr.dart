// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HistoryBillRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryBillRouteArgs>(
          orElse: () => const HistoryBillRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HistoryBillPage(key: args.key),
      );
    },
    HistoryPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryPaymentRouteArgs>(
          orElse: () => const HistoryPaymentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HistoryPaymentPage(key: args.key),
      );
    },
    DetailBillRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailBillPage(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WebViewPage(
          key: args.key,
          title: args.title,
          customColorLoading: args.customColorLoading,
          customIcon: args.customIcon,
          linkUrl: args.linkUrl,
        ),
      );
    },
    DetailPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPaymentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailPaymentPage(
          key: args.key,
          trxModel: args.trxModel,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };
}

/// generated route for
/// [HistoryBillPage]
class HistoryBillRoute extends PageRouteInfo<HistoryBillRouteArgs> {
  HistoryBillRoute({
    dynamic key,
    List<PageRouteInfo>? children,
  }) : super(
          HistoryBillRoute.name,
          args: HistoryBillRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HistoryBillRoute';

  static const PageInfo<HistoryBillRouteArgs> page =
      PageInfo<HistoryBillRouteArgs>(name);
}

class HistoryBillRouteArgs {
  const HistoryBillRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'HistoryBillRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HistoryPaymentPage]
class HistoryPaymentRoute extends PageRouteInfo<HistoryPaymentRouteArgs> {
  HistoryPaymentRoute({
    dynamic key,
    List<PageRouteInfo>? children,
  }) : super(
          HistoryPaymentRoute.name,
          args: HistoryPaymentRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HistoryPaymentRoute';

  static const PageInfo<HistoryPaymentRouteArgs> page =
      PageInfo<HistoryPaymentRouteArgs>(name);
}

class HistoryPaymentRouteArgs {
  const HistoryPaymentRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'HistoryPaymentRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DetailBillPage]
class DetailBillRoute extends PageRouteInfo<void> {
  const DetailBillRoute({List<PageRouteInfo>? children})
      : super(
          DetailBillRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailBillRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WebViewPage]
class WebViewRoute extends PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    dynamic key,
    required String title,
    Color? customColorLoading,
    Icon? customIcon,
    required String linkUrl,
    List<PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            title: title,
            customColorLoading: customColorLoading,
            customIcon: customIcon,
            linkUrl: linkUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const PageInfo<WebViewRouteArgs> page =
      PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    this.customColorLoading,
    this.customIcon,
    required this.linkUrl,
  });

  final dynamic key;

  final String title;

  final Color? customColorLoading;

  final Icon? customIcon;

  final String linkUrl;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, customColorLoading: $customColorLoading, customIcon: $customIcon, linkUrl: $linkUrl}';
  }
}

/// generated route for
/// [DetailPaymentPage]
class DetailPaymentRoute extends PageRouteInfo<DetailPaymentRouteArgs> {
  DetailPaymentRoute({
    Key? key,
    required TrxModel trxModel,
    List<PageRouteInfo>? children,
  }) : super(
          DetailPaymentRoute.name,
          args: DetailPaymentRouteArgs(
            key: key,
            trxModel: trxModel,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailPaymentRoute';

  static const PageInfo<DetailPaymentRouteArgs> page =
      PageInfo<DetailPaymentRouteArgs>(name);
}

class DetailPaymentRouteArgs {
  const DetailPaymentRouteArgs({
    this.key,
    required this.trxModel,
  });

  final Key? key;

  final TrxModel trxModel;

  @override
  String toString() {
    return 'DetailPaymentRouteArgs{key: $key, trxModel: $trxModel}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
