// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tusulvvdiin_medeelel.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
    with EquatableMixin {
  PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt();

  factory PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltFromJson(
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
      _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai
    with EquatableMixin {
  PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai();

  factory PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhaiFromJson(json);

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
  List<PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt>
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
      _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhaiToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltUurhai$Query$Paginate with EquatableMixin {
  PaginateolborloltUurhai$Query$Paginate();

  factory PaginateolborloltUurhai$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltUurhai$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_olborlolt_uurkhai')
  List<PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai>
      dsOlborloltUurkhai;

  @override
  List<Object> get props => [total, lastPage, dsOlborloltUurkhai];
  Map<String, dynamic> toJson() =>
      _$PaginateolborloltUurhai$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltUurhai$Query with EquatableMixin {
  PaginateolborloltUurhai$Query();

  factory PaginateolborloltUurhai$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateolborloltUurhai$QueryFromJson(json);

  PaginateolborloltUurhai$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateolborloltUurhai$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel
    with EquatableMixin {
  Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel();

  factory Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel.fromJson(
          Map<String, dynamic> json) =>
      _$Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlelFromJson(json);

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
      _$Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginateuildver$Query$Paginate$DsUildver with EquatableMixin {
  Paginateuildver$Query$Paginate$DsUildver();

  factory Paginateuildver$Query$Paginate$DsUildver.fromJson(
          Map<String, dynamic> json) =>
      _$Paginateuildver$Query$Paginate$DsUildverFromJson(json);

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
  List<Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel>
      dsSubUildverlel;

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
      _$Paginateuildver$Query$Paginate$DsUildverToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginateuildver$Query$Paginate with EquatableMixin {
  Paginateuildver$Query$Paginate();

  factory Paginateuildver$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$Paginateuildver$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_uildver')
  List<Paginateuildver$Query$Paginate$DsUildver> dsUildver;

  @override
  List<Object> get props => [total, lastPage, dsUildver];
  Map<String, dynamic> toJson() => _$Paginateuildver$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginateuildver$Query with EquatableMixin {
  Paginateuildver$Query();

  factory Paginateuildver$Query.fromJson(Map<String, dynamic> json) =>
      _$Paginateuildver$QueryFromJson(json);

  Paginateuildver$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Paginateuildver$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltUurhaiArguments extends JsonSerializable
    with EquatableMixin {
  PaginateolborloltUurhaiArguments({@required this.page, @required this.size});

  @override
  factory PaginateolborloltUurhaiArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltUurhaiArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginateolborloltUurhaiArgumentsToJson(this);
}

class PaginateolborloltUurhaiQuery extends GraphQLQuery<
    PaginateolborloltUurhai$Query, PaginateolborloltUurhaiArguments> {
  PaginateolborloltUurhaiQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateolborlolt_uurhai'),
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
  final String operationName = 'paginateolborlolt_uurhai';

  @override
  final PaginateolborloltUurhaiArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateolborloltUurhai$Query parse(Map<String, dynamic> json) =>
      PaginateolborloltUurhai$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginateuildverArguments extends JsonSerializable with EquatableMixin {
  PaginateuildverArguments({@required this.page, @required this.size});

  @override
  factory PaginateuildverArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateuildverArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateuildverArgumentsToJson(this);
}

class PaginateuildverQuery
    extends GraphQLQuery<Paginateuildver$Query, PaginateuildverArguments> {
  PaginateuildverQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateuildver'),
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
  final String operationName = 'paginateuildver';

  @override
  final PaginateuildverArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Paginateuildver$Query parse(Map<String, dynamic> json) =>
      Paginateuildver$Query.fromJson(json);
}
