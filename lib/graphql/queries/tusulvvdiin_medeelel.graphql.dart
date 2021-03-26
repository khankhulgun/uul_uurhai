// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tusulvvdiin_medeelel.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
    with EquatableMixin {
  OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt();

  factory OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt.fromJson(
          Map<String, dynamic> json) =>
      _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltFromJson(
          json);

  @JsonKey(name: 'ajilchin_too')
  double ajilchinToo;

  @JsonKey(name: 'b_noots')
  double bNoots;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String buteegdehuun;

  @JsonKey(name: 'buteegdehuun_id')
  int buteegdehuunId;

  String code;

  int id;

  @JsonKey(name: 'o_ehelsen_on')
  String oEhelsenOn;

  @JsonKey(name: 'o_huch_chadal')
  double oHuchChadal;

  @JsonKey(name: 'table_id')
  int tableId;

  @JsonKey(name: 'tezu_b_on')
  String tezuBOn;

  String torol;

  @JsonKey(name: 'torol_code')
  String torolCode;

  String zurag;

  @override
  List<Object> get props => [
        ajilchinToo,
        bNoots,
        bTorolId,
        buteegdehuun,
        buteegdehuunId,
        code,
        id,
        oEhelsenOn,
        oHuchChadal,
        tableId,
        tezuBOn,
        torol,
        torolCode,
        zurag
      ];
  Map<String, dynamic> toJson() =>
      _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai with EquatableMixin {
  OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai();

  factory OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai.fromJson(
          Map<String, dynamic> json) =>
      _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhaiFromJson(json);

  @JsonKey(name: 'ah_negj_id')
  int ahNegjId;

  @JsonKey(name: 'aimag_id')
  int aimagId;

  String aimagname;

  @JsonKey(name: 'bag_id')
  int bagId;

  String bagname;

  int id;

  @JsonKey(name: 'sum_id')
  int sumId;

  String sumname;

  @JsonKey(name: 'tz_dugaar')
  String tzDugaar;

  @JsonKey(name: 'uurkhain_ner')
  String uurkhainNer;

  @JsonKey(name: 'ds_sub_olborlolt')
  List<OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt>
      dsSubOlborlolt;

  @override
  List<Object> get props => [
        ahNegjId,
        aimagId,
        aimagname,
        bagId,
        bagname,
        id,
        sumId,
        sumname,
        tzDugaar,
        uurkhainNer,
        dsSubOlborlolt
      ];
  Map<String, dynamic> toJson() =>
      _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhaiToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltUurkhai$Query$Paginate with EquatableMixin {
  OlborloltUurkhai$Query$Paginate();

  factory OlborloltUurkhai$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$OlborloltUurkhai$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_olborlolt_uurkhai')
  List<OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai> dsOlborloltUurkhai;

  @override
  List<Object> get props => [total, lastPage, dsOlborloltUurkhai];
  Map<String, dynamic> toJson() =>
      _$OlborloltUurkhai$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltUurkhai$Query with EquatableMixin {
  OlborloltUurkhai$Query();

  factory OlborloltUurkhai$Query.fromJson(Map<String, dynamic> json) =>
      _$OlborloltUurkhai$QueryFromJson(json);

  OlborloltUurkhai$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$OlborloltUurkhai$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Uildver$Query$Paginate$DsUildver$DsSubUildverlel with EquatableMixin {
  Uildver$Query$Paginate$DsUildver$DsSubUildverlel();

  factory Uildver$Query$Paginate$DsUildver$DsSubUildverlel.fromJson(
          Map<String, dynamic> json) =>
      _$Uildver$Query$Paginate$DsUildver$DsSubUildverlelFromJson(json);

  @JsonKey(name: 'ajilchin_too')
  double ajilchinToo;

  @JsonKey(name: 'b_huchin_chadal')
  double bHuchinChadal;

  @JsonKey(name: 'b_noots')
  double bNoots;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String buteegdehuun;

  @JsonKey(name: 'buteegdehuun_id')
  int buteegdehuunId;

  String code;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tezu;

  String torol;

  @JsonKey(name: 'torol_code')
  String torolCode;

  @JsonKey(name: 'u_ehelsen')
  String uEhelsen;

  @JsonKey(name: 'uildverlel_tolov_id')
  int uildverlelTolovId;

  String zurag;

  @override
  List<Object> get props => [
        ajilchinToo,
        bHuchinChadal,
        bNoots,
        bTorolId,
        buteegdehuun,
        buteegdehuunId,
        code,
        id,
        tableId,
        tezu,
        torol,
        torolCode,
        uEhelsen,
        uildverlelTolovId,
        zurag
      ];
  Map<String, dynamic> toJson() =>
      _$Uildver$Query$Paginate$DsUildver$DsSubUildverlelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Uildver$Query$Paginate$DsUildver with EquatableMixin {
  Uildver$Query$Paginate$DsUildver();

  factory Uildver$Query$Paginate$DsUildver.fromJson(
          Map<String, dynamic> json) =>
      _$Uildver$Query$Paginate$DsUildverFromJson(json);

  @JsonKey(name: 'aimag_id')
  int aimagId;

  String aimagname;

  @JsonKey(name: 'aj_ahui_id')
  int ajAhuiId;

  @JsonKey(name: 'bag_id')
  int bagId;

  String bagname;

  int id;

  @JsonKey(name: 'sum_id')
  int sumId;

  String sumname;

  @JsonKey(name: 'uildver_ner')
  String uildverNer;

  @JsonKey(name: 'ds_sub_uildverlel')
  List<Uildver$Query$Paginate$DsUildver$DsSubUildverlel> dsSubUildverlel;

  @override
  List<Object> get props => [
        aimagId,
        aimagname,
        ajAhuiId,
        bagId,
        bagname,
        id,
        sumId,
        sumname,
        uildverNer,
        dsSubUildverlel
      ];
  Map<String, dynamic> toJson() =>
      _$Uildver$Query$Paginate$DsUildverToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Uildver$Query$Paginate with EquatableMixin {
  Uildver$Query$Paginate();

  factory Uildver$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$Uildver$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_uildver')
  List<Uildver$Query$Paginate$DsUildver> dsUildver;

  @override
  List<Object> get props => [total, lastPage, dsUildver];
  Map<String, dynamic> toJson() => _$Uildver$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Uildver$Query with EquatableMixin {
  Uildver$Query();

  factory Uildver$Query.fromJson(Map<String, dynamic> json) =>
      _$Uildver$QueryFromJson(json);

  Uildver$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Uildver$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltUurkhaiArguments extends JsonSerializable with EquatableMixin {
  OlborloltUurkhaiArguments({@required this.page, @required this.size});

  @override
  factory OlborloltUurkhaiArguments.fromJson(Map<String, dynamic> json) =>
      _$OlborloltUurkhaiArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$OlborloltUurkhaiArgumentsToJson(this);
}

class OlborloltUurkhaiQuery
    extends GraphQLQuery<OlborloltUurkhai$Query, OlborloltUurkhaiArguments> {
  OlborloltUurkhaiQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'olborlolt_uurkhai'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
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
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ds_olborlolt_uurkhai'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'ah_negj_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'aimag_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'aimagname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'bag_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'bagname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sum_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sumname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tz_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'uurkhain_ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_olborlolt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'ajilchin_too'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_noots'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'code'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'o_ehelsen_on'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'o_huch_chadal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tezu_b_on'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_code'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'zurag'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'olborlolt_uurkhai';

  @override
  final OlborloltUurkhaiArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  OlborloltUurkhai$Query parse(Map<String, dynamic> json) =>
      OlborloltUurkhai$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UildverArguments extends JsonSerializable with EquatableMixin {
  UildverArguments({@required this.page, @required this.size});

  @override
  factory UildverArguments.fromJson(Map<String, dynamic> json) =>
      _$UildverArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$UildverArgumentsToJson(this);
}

class UildverQuery extends GraphQLQuery<Uildver$Query, UildverArguments> {
  UildverQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'uildver'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
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
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ds_uildver'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'aimag_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'aimagname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'aj_ahui_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'bag_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'bagname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sum_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sumname'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'uildver_ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_uildverlel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'ajilchin_too'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_huchin_chadal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_noots'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'code'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tezu'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_code'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'u_ehelsen'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'uildverlel_tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'zurag'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'uildver';

  @override
  final UildverArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Uildver$Query parse(Map<String, dynamic> json) =>
      Uildver$Query.fromJson(json);
}
