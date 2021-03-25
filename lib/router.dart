import 'package:flutter/material.dart';
import 'package:catalog/ui/views/recovery.dart';
import 'package:catalog/ui/views/reset.dart';


import 'package:catalog/ui/views/login.dart';
import 'package:catalog/ui/views/setting/setting.dart';
import 'package:catalog/ui/views/profile.dart';
import './ui/views/main.dart';
import './ui/views/page/news.dart';
import './ui/views/page/shuurhai_ajil.dart';
import './ui/views/page/ZG_vil_ajilganii_hutulbur.dart';
import './ui/views/page/law/zasgiin_gazriin_togtool.dart';
import './ui/views/page/law/bodlogiin_barimt_bichig.dart';
import './ui/views/page/statistic/export.dart';
import './ui/views/page/statistic/olborlolt.dart';
import './ui/views/page/statistic/MB_hudaldan_avalt.dart';
import './ui/views/page/statistic/taamag_vne.dart';
import './ui/views/page/Tusuv_HAA/hudaldana_avah_ajillagaa.dart';
import './ui/views/page/Tusuv_HAA/orlogo.dart';
import './ui/views/page/Tusuv_HAA/zarlaga.dart';
import './ui/views/page/tuslvvdiin_medeelel/uurhai.dart';
import './ui/views/page/tuslvvdiin_medeelel/vildver.dart';
import './ui/views/page/busad/tusgai_zuvshuurul.dart';
import './ui/views/page/busad/songon_shalgaruulalt.dart';
import './ui/views/page/busad/erdes_baylag_mergejliin_zuvluh.dart';
import './ui/views/page/busad/ajilah_hvchnii_medeelel.dart';
import './ui/views/page/heregjilt/bodlogiin_bichig_barimt.dart';
import './ui/views/page/heregjilt/ZG_togtoolii_heregjilt.dart';
import './ui/views/page/heregjilt/ajiliin_heseg.dart';
import './ui/views/page/heregjilt/hurungu_oruulalt_t_t.dart';


class Router {
  Router._();

  static final routes = <String, WidgetBuilder>{
    '/': (context) => LoginPage(),
    '/login': (context) => LoginPage(),
    '/main': (context) => mainScreen(),
    '/news': (context) => News(),
    '/law': (context) => zasgiin_gazriin_togtool(),
    '/bodlogo_b_b': (context) => bodlogiin_b_b(),
    '/export': (context) => Export(),
    '/olborlolt': (context) => Olborlolt(),
    '/mbank': (context) => Mbank(),
    '/taamag': (context) => TaamagVne(),
    '/buy': (context) => Buy(),
    '/orlogo': (context) => Orlogo(),
    '/zarlaga': (context) => Zarlaga(),
    '/uurhai': (context) => Uurhai(),
    '/vildver': (context) => Vildver(),
    '/tusgai': (context) => TusgaiZuvshuurul(),
    '/songonShalgaruulaltgon': (context) => SongonShalgaruulalt(),
    '/ebmz': (context) => ErdesBaylagMergejliinZuvlul(),
    '/ajillahHvch': (context) => AjillahHvch(),
    '/bodlogo': (context) => BodlogiinBichigBarimt(),
    '/zg': (context) => ZG_togtooliin_heregjilt(),
    '/ajiliinHeseg': (context) => Ajiliin_heseg(),
    '/HOTH': (context) => Hurungu_oruulalt(),
    '/shuurhai': (context) => ShuurhaiAjil(),
    '/hutulbur': (context) => ZGhutulbur(),





    '/recovery': (context) => RecoveryPage(),
    '/reset': (context) => ResetPage(),
    '/changePassword': (context) => Settings(),
    '/profile': (context) => ProfileScreen(),
  };
}
