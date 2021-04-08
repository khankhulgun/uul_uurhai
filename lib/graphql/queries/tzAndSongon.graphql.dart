// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tzAndSongon.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class TzAndSongon$Query$AaTusgaiZovshoorol with EquatableMixin {
  TzAndSongon$Query$AaTusgaiZovshoorol();

  factory TzAndSongon$Query$AaTusgaiZovshoorol.fromJson(
          Map<String, dynamic> json) =>
      _$TzAndSongon$Query$AaTusgaiZovshoorolFromJson(json);

  int id;

  @JsonKey(name: 'tz_too')
  double tzToo;

  @JsonKey(name: 'a_t_too')
  double aTToo;

  @JsonKey(name: 'ht_zovshoorol')
  double htZovshoorol;

  @JsonKey(name: 't_hemjee_say')
  double tHemjeeSay;

  @JsonKey(name: 'haiguul_t_z')
  double haiguulTZ;

  @JsonKey(name: 'a_t_zovshoorol')
  double aTZovshoorol;

  @JsonKey(name: 'niit_gazar_huvi')
  double niitGazarHuvi;

  @JsonKey(name: 'haiguul_huvi')
  double haiguulHuvi;

  @JsonKey(name: 'ashiglat_tz_huvi')
  double ashiglatTzHuvi;

  @override
  List<Object> get props => [
        id,
        tzToo,
        aTToo,
        htZovshoorol,
        tHemjeeSay,
        haiguulTZ,
        aTZovshoorol,
        niitGazarHuvi,
        haiguulHuvi,
        ashiglatTzHuvi
      ];
  Map<String, dynamic> toJson() =>
      _$TzAndSongon$Query$AaTusgaiZovshoorolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TzAndSongon$Query$AaSongonShalgaruulalt with EquatableMixin {
  TzAndSongon$Query$AaSongonShalgaruulalt();

  factory TzAndSongon$Query$AaSongonShalgaruulalt.fromJson(
          Map<String, dynamic> json) =>
      _$TzAndSongon$Query$AaSongonShalgaruulaltFromJson(json);

  int id;

  @JsonKey(name: 's_sh_bagts')
  double sShBagts;

  @JsonKey(name: 's_sh_talbai')
  double sShTalbai;

  @JsonKey(name: 's_sh_hemjee_ga')
  double sShHemjeeGa;

  @JsonKey(name: 'ologson_z_too')
  double ologsonZToo;

  @JsonKey(name: 'ologson_hegmjee_ga')
  double ologsonHegmjeeGa;

  @JsonKey(name: 'uls_tosov_terbum')
  double ulsTosovTerbum;

  @override
  List<Object> get props => [
        id,
        sShBagts,
        sShTalbai,
        sShHemjeeGa,
        ologsonZToo,
        ologsonHegmjeeGa,
        ulsTosovTerbum
      ];
  Map<String, dynamic> toJson() =>
      _$TzAndSongon$Query$AaSongonShalgaruulaltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TzAndSongon$Query with EquatableMixin {
  TzAndSongon$Query();

  factory TzAndSongon$Query.fromJson(Map<String, dynamic> json) =>
      _$TzAndSongon$QueryFromJson(json);

  @JsonKey(name: 'aa_tusgai_zovshoorol')
  List<TzAndSongon$Query$AaTusgaiZovshoorol> aaTusgaiZovshoorol;

  @JsonKey(name: 'aa_songon_shalgaruulalt')
  List<TzAndSongon$Query$AaSongonShalgaruulalt> aaSongonShalgaruulalt;

  @override
  List<Object> get props => [aaTusgaiZovshoorol, aaSongonShalgaruulalt];
  Map<String, dynamic> toJson() => _$TzAndSongon$QueryToJson(this);
}

class TzAndSongonQuery
    extends GraphQLQuery<TzAndSongon$Query, JsonSerializable> {
  TzAndSongonQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'tzAndSongon'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'aa_tusgai_zovshoorol'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '1')),
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'tz_too'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'a_t_too'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ht_zovshoorol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 't_hemjee_say'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'haiguul_t_z'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'a_t_zovshoorol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'niit_gazar_huvi'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'haiguul_huvi'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ashiglat_tz_huvi'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'aa_songon_shalgaruulalt'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '1')),
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 's_sh_bagts'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 's_sh_talbai'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 's_sh_hemjee_ga'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ologson_z_too'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ologson_hegmjee_ga'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'uls_tosov_terbum'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'tzAndSongon';

  @override
  List<Object> get props => [document, operationName];
  @override
  TzAndSongon$Query parse(Map<String, dynamic> json) =>
      TzAndSongon$Query.fromJson(json);
}
