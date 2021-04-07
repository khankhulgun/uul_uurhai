// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tzAndSongon.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TzAndSongon$Query$AaTusgaiZovshoorol
    _$TzAndSongon$Query$AaTusgaiZovshoorolFromJson(Map<String, dynamic> json) {
  return TzAndSongon$Query$AaTusgaiZovshoorol()
    ..id = json['id'] as int
    ..tzToo = (json['tz_too'] as num)?.toDouble()
    ..aTToo = (json['a_t_too'] as num)?.toDouble()
    ..htZovshoorol = (json['ht_zovshoorol'] as num)?.toDouble()
    ..tHemjeeSay = (json['t_hemjee_say'] as num)?.toDouble()
    ..haiguulTZ = (json['haiguul_t_z'] as num)?.toDouble()
    ..aTZovshoorol = (json['a_t_zovshoorol'] as num)?.toDouble()
    ..niitGazarHuvi = (json['niit_gazar_huvi'] as num)?.toDouble()
    ..haiguulHuvi = (json['haiguul_huvi'] as num)?.toDouble()
    ..ashiglatTzHuvi = (json['ashiglat_tz_huvi'] as num)?.toDouble();
}

Map<String, dynamic> _$TzAndSongon$Query$AaTusgaiZovshoorolToJson(
        TzAndSongon$Query$AaTusgaiZovshoorol instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tz_too': instance.tzToo,
      'a_t_too': instance.aTToo,
      'ht_zovshoorol': instance.htZovshoorol,
      't_hemjee_say': instance.tHemjeeSay,
      'haiguul_t_z': instance.haiguulTZ,
      'a_t_zovshoorol': instance.aTZovshoorol,
      'niit_gazar_huvi': instance.niitGazarHuvi,
      'haiguul_huvi': instance.haiguulHuvi,
      'ashiglat_tz_huvi': instance.ashiglatTzHuvi,
    };

TzAndSongon$Query$AaSongonShalgaruulalt
    _$TzAndSongon$Query$AaSongonShalgaruulaltFromJson(
        Map<String, dynamic> json) {
  return TzAndSongon$Query$AaSongonShalgaruulalt()
    ..id = json['id'] as int
    ..sShBagts = (json['s_sh_bagts'] as num)?.toDouble()
    ..sShTalbai = (json['s_sh_talbai'] as num)?.toDouble()
    ..sShHemjeeGa = (json['s_sh_hemjee_ga'] as num)?.toDouble()
    ..ologsonZToo = (json['ologson_z_too'] as num)?.toDouble()
    ..ologsonHegmjeeGa = (json['ologson_hegmjee_ga'] as num)?.toDouble()
    ..ulsTosovTerbum = (json['uls_tosov_terbum'] as num)?.toDouble();
}

Map<String, dynamic> _$TzAndSongon$Query$AaSongonShalgaruulaltToJson(
        TzAndSongon$Query$AaSongonShalgaruulalt instance) =>
    <String, dynamic>{
      'id': instance.id,
      's_sh_bagts': instance.sShBagts,
      's_sh_talbai': instance.sShTalbai,
      's_sh_hemjee_ga': instance.sShHemjeeGa,
      'ologson_z_too': instance.ologsonZToo,
      'ologson_hegmjee_ga': instance.ologsonHegmjeeGa,
      'uls_tosov_terbum': instance.ulsTosovTerbum,
    };

TzAndSongon$Query _$TzAndSongon$QueryFromJson(Map<String, dynamic> json) {
  return TzAndSongon$Query()
    ..aaTusgaiZovshoorol = (json['aa_tusgai_zovshoorol'] as List)
        ?.map((e) => e == null
            ? null
            : TzAndSongon$Query$AaTusgaiZovshoorol.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..aaSongonShalgaruulalt = (json['aa_songon_shalgaruulalt'] as List)
        ?.map((e) => e == null
            ? null
            : TzAndSongon$Query$AaSongonShalgaruulalt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TzAndSongon$QueryToJson(TzAndSongon$Query instance) =>
    <String, dynamic>{
      'aa_tusgai_zovshoorol':
          instance.aaTusgaiZovshoorol?.map((e) => e?.toJson())?.toList(),
      'aa_songon_shalgaruulalt':
          instance.aaSongonShalgaruulalt?.map((e) => e?.toJson())?.toList(),
    };
