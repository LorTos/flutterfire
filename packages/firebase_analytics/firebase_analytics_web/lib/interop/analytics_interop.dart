// Copyright 2021, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: avoid_unused_constructor_parameters, non_constant_identifier_names, public_member_api_docs

@JS('firebase_analytics')
library firebase_interop.analytics;

import 'package:firebase_analytics_platform_interface/firebase_analytics_platform_interface.dart';
import 'package:firebase_core_web/firebase_core_web_interop.dart';

import 'package:js/js.dart';

@JS()
external AnalyticsJsImpl getAnalytics([AppJsImpl? app]);

@JS()
external AnalyticsJsImpl initializeAnalytics([AppJsImpl app]);

@JS()
external PromiseJsImpl<bool> isSupported();

@JS()
external void logEvent(
  AnalyticsJsImpl analytics,
  String eventName,
  dynamic parameters,
  AnalyticsCallOptions? callOptions,
);

@JS()
external void setAnalyticsCollectionEnabled(
  AnalyticsJsImpl analytics,
  bool enabled,
);

@JS()
external void setCurrentScreen(
  AnalyticsJsImpl analytics,
  String? screenName,
  AnalyticsCallOptions? callOptions,
);

@JS()
external void setUserId(
  AnalyticsJsImpl analytics,
  String? id,
  AnalyticsCallOptions? callOptions,
);

@JS()
external void setUserProperties(
  AnalyticsJsImpl analytics,
  dynamic property,
  AnalyticsCallOptions? callOptions,
);

/// https://firebase.google.com/docs/reference/js/analytics.md#setconsent
@JS()
external PromiseJsImpl<void> setConsent(
  ConsentSettings consentSettings,
);

@JS('Analytics')
abstract class AnalyticsJsImpl {
  external AppJsImpl get app;
}

/// https://firebase.google.com/docs/reference/js/analytics.consentsettings
@JS()
class ConsentSettings {
  external String? get ad_storage;
  external String? get analytics_storage;
  external String? get functionality_storage;
  external String? get personalization_storage;
  external String? get security_storage;

  external factory ConsentSettings({
    String? ad_storage,
    String? analytics_storage,
    String? functionality_storage,
    String? personalization_storage,
    String? security_storage,
  });
}
