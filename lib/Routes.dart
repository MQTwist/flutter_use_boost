// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_use_boost/home_page.dart';

class Routes {
  /// 由于很多同学说没有跳转动画，这里是因为之前exmaple里面用的是 [PageRouteBuilder]，
  /// 其实这里是可以自定义的，和Boost没太多关系，比如我想用类似iOS平台的动画，
  /// 那么只需要像下面这样写成 [MaterialPageRoute] 即可
  /// (这里全写成[MaterialPageRoute]也行，这里只不过用[MaterialPageRoute]举例子)
  ///
  /// 注意，如果需要push的时候，两个页面都需要动的话，
  /// （就是像iOS native那样，在push的时候，前面一个页面也会向左推一段距离）
  /// 那么前后两个页面都必须是遵循CupertinoRouteTransitionMixin的路由
  /// 简单来说，就两个页面都是MaterialPageRoute就好
  /// 如果用MaterialPageRoute的话同理

  static Map<String, FlutterBoostRouteFactory> routerMap = {
    'home': (settings, uniqueId) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const MyHomePage(title: 'Home Page'),
      );
    },
  };
}
