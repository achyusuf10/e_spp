import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class WebViewPage extends StatefulWidget {
  final String title;
  final String linkUrl;
  final Icon? customIcon;
  final Color? customColorLoading;

  const WebViewPage({
    key,
    required this.title,
    this.customColorLoading,
    this.customIcon,
    required this.linkUrl,
  }) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  double loadingProgress = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget.white(
        title: widget.title,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            loadingProgress < 1
                ? SizedBox(
                    height: 3,
                    child: LinearProgressIndicator(
                      value: loadingProgress,
                      color:
                          widget.customColorLoading ?? const Color(0xff6370E7),
                      backgroundColor: AppColors.grayBackground,
                    ),
                  )
                : const Divider(),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse(widget.linkUrl),
                ),
                initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(
                    useShouldOverrideUrlLoading: true,
                  ),
                  android: AndroidInAppWebViewOptions(
                    useHybridComposition: true,
                  ),
                  ios: IOSInAppWebViewOptions(
                    allowsInlineMediaPlayback: true,
                  ),
                ),
                onReceivedServerTrustAuthRequest:
                    (InAppWebViewController controller,
                        URLAuthenticationChallenge challenge) async {
                  return ServerTrustAuthResponse(
                      action: ServerTrustAuthResponseAction.PROCEED);
                },
                onLoadStart: (controller, url) {},
                onLoadHttpError: (controller, url, int i, String s) async {},
                onUpdateVisitedHistory: (controller, url, androidIsReload) {
                  if (url == null) return;
                  if (url.toString().split('/').contains('gopay')) {
                    launchUrl(
                      Uri.parse('market://details?id=com.gojek.app'),
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                onProgressChanged: (
                  InAppWebViewController webViewController,
                  int progress,
                ) {
                  setState(() {
                    loadingProgress = progress / 100;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
// intent://gopay/merchanttransfer?tref=A220230719035852x5bpvxLijKID&amount=10000&activity=GP:RR&callback_url=#Intent;scheme=gojek;package=com.gojek.app;S.browser_fallback_url=market://details?id=com.gojek.app;l.appsflyer_click_ts=1689739144321;end