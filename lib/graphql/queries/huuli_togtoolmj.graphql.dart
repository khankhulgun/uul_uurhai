// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'huuli_togtoolmj.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt
    with EquatableMixin {
  MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt();

  factory MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt.fromJson(
          Map<String, dynamic> json) =>
      _$MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltFromJson(json);

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String zaalt;

  @override
  List<Object> get props => [id, tableId, zaalt];
  Map<String, dynamic> toJson() =>
      _$MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MUlsHuuli$Query$Paginate$AaMUlsHuuli with EquatableMixin {
  MUlsHuuli$Query$Paginate$AaMUlsHuuli();

  factory MUlsHuuli$Query$Paginate$AaMUlsHuuli.fromJson(
          Map<String, dynamic> json) =>
      _$MUlsHuuli$Query$Paginate$AaMUlsHuuliFromJson(json);

  String holboos;

  String huuli;

  int id;

  String zaalt;

  @JsonKey(name: 'sub_m_uls_huuli_zaalt')
  List<MUlsHuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt>
      subMUlsHuuliZaalt;

  @override
  List<Object> get props => [holboos, huuli, id, zaalt, subMUlsHuuliZaalt];
  Map<String, dynamic> toJson() =>
      _$MUlsHuuli$Query$Paginate$AaMUlsHuuliToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MUlsHuuli$Query$Paginate with EquatableMixin {
  MUlsHuuli$Query$Paginate();

  factory MUlsHuuli$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$MUlsHuuli$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_m_uls_huuli')
  List<MUlsHuuli$Query$Paginate$AaMUlsHuuli> aaMUlsHuuli;

  @override
  List<Object> get props => [total, lastPage, aaMUlsHuuli];
  Map<String, dynamic> toJson() => _$MUlsHuuli$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MUlsHuuli$Query with EquatableMixin {
  MUlsHuuli$Query();

  factory MUlsHuuli$Query.fromJson(Map<String, dynamic> json) =>
      _$MUlsHuuli$QueryFromJson(json);

  MUlsHuuli$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$MUlsHuuli$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt
    with EquatableMixin {
  UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt();

  factory UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt.fromJson(
          Map<String, dynamic> json) =>
      _$UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltFromJson(
          json);

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String zaalt;

  @override
  List<Object> get props => [id, tableId, zaalt];
  Map<String, dynamic> toJson() =>
      _$UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool with EquatableMixin {
  UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool();

  factory UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool.fromJson(
          Map<String, dynamic> json) =>
      _$UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtoolFromJson(json);

  String holhoos;

  int id;

  String togtool;

  String zaalt;

  @JsonKey(name: 'sub_uih_zaalt')
  List<UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt>
      subUihZaalt;

  @override
  List<Object> get props => [holhoos, id, togtool, zaalt, subUihZaalt];
  Map<String, dynamic> toJson() =>
      _$UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtoolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UlsIhHuralTogtool$Query$Paginate with EquatableMixin {
  UlsIhHuralTogtool$Query$Paginate();

  factory UlsIhHuralTogtool$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$UlsIhHuralTogtool$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_uls_ih_hural_togtool')
  List<UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool>
      aaUlsIhHuralTogtool;

  @override
  List<Object> get props => [total, lastPage, aaUlsIhHuralTogtool];
  Map<String, dynamic> toJson() =>
      _$UlsIhHuralTogtool$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UlsIhHuralTogtool$Query with EquatableMixin {
  UlsIhHuralTogtool$Query();

  factory UlsIhHuralTogtool$Query.fromJson(Map<String, dynamic> json) =>
      _$UlsIhHuralTogtool$QueryFromJson(json);

  UlsIhHuralTogtool$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$UlsIhHuralTogtool$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig
    with EquatableMixin {
  Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig();

  factory Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichigFromJson(json);

  @JsonKey(name: 'b_ognoo')
  DateTime bOgnoo;

  String holboos;

  int id;

  String ner;

  String salbar;

  @JsonKey(name: 'salbar_id')
  int salbarId;

  @JsonKey(name: 't_hugatsaa')
  String tHugatsaa;

  @JsonKey(name: 't_hugatsaa_id')
  int tHugatsaaId;

  @JsonKey(name: 't_sh_dugaar')
  String tShDugaar;

  @override
  List<Object> get props => [
        bOgnoo,
        holboos,
        id,
        ner,
        salbar,
        salbarId,
        tHugatsaa,
        tHugatsaaId,
        tShDugaar
      ];
  Map<String, dynamic> toJson() =>
      _$Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichigToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatebodbarbichig$Query$Paginate with EquatableMixin {
  Paginatebodbarbichig$Query$Paginate();

  factory Paginatebodbarbichig$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatebodbarbichig$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_bodlogo_barimt_bichig')
  List<Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig>
      dsBodlogoBarimtBichig;

  @override
  List<Object> get props => [total, lastPage, dsBodlogoBarimtBichig];
  Map<String, dynamic> toJson() =>
      _$Paginatebodbarbichig$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatebodbarbichig$Query with EquatableMixin {
  Paginatebodbarbichig$Query();

  factory Paginatebodbarbichig$Query.fromJson(Map<String, dynamic> json) =>
      _$Paginatebodbarbichig$QueryFromJson(json);

  Paginatebodbarbichig$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Paginatebodbarbichig$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool
    with EquatableMixin {
  PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool();

  factory PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtoolFromJson(json);

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String zaalt;

  @override
  List<Object> get props => [id, tableId, zaalt];
  Map<String, dynamic> toJson() =>
      _$PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtoolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatezgTogtool$Query$Paginate$AaZgTogtool with EquatableMixin {
  PaginatezgTogtool$Query$Paginate$AaZgTogtool();

  factory PaginatezgTogtool$Query$Paginate$AaZgTogtool.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatezgTogtool$Query$Paginate$AaZgTogtoolFromJson(json);

  String holboos;

  int id;

  String togtool;

  String zaalt;

  @JsonKey(name: 'sub_zg_togtool')
  List<PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool> subZgTogtool;

  @override
  List<Object> get props => [holboos, id, togtool, zaalt, subZgTogtool];
  Map<String, dynamic> toJson() =>
      _$PaginatezgTogtool$Query$Paginate$AaZgTogtoolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatezgTogtool$Query$Paginate with EquatableMixin {
  PaginatezgTogtool$Query$Paginate();

  factory PaginatezgTogtool$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatezgTogtool$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_zg_togtool')
  List<PaginatezgTogtool$Query$Paginate$AaZgTogtool> aaZgTogtool;

  @override
  List<Object> get props => [total, lastPage, aaZgTogtool];
  Map<String, dynamic> toJson() =>
      _$PaginatezgTogtool$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatezgTogtool$Query with EquatableMixin {
  PaginatezgTogtool$Query();

  factory PaginatezgTogtool$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatezgTogtool$QueryFromJson(json);

  PaginatezgTogtool$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatezgTogtool$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query$Paginate$DsDuremJuram with EquatableMixin {
  PaginateduremJuram$Query$Paginate$DsDuremJuram();

  factory PaginateduremJuram$Query$Paginate$DsDuremJuram.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateduremJuram$Query$Paginate$DsDuremJuramFromJson(json);

  String akt;

  String dugaar;

  @JsonKey(name: 'e_zuin_akt_id')
  int eZuinAktId;

  String file;

  int id;

  DateTime ognoo;

  String tuhai;

  @override
  List<Object> get props => [akt, dugaar, eZuinAktId, file, id, ognoo, tuhai];
  Map<String, dynamic> toJson() =>
      _$PaginateduremJuram$Query$Paginate$DsDuremJuramToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query$Paginate with EquatableMixin {
  PaginateduremJuram$Query$Paginate();

  factory PaginateduremJuram$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateduremJuram$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_durem_juram')
  List<PaginateduremJuram$Query$Paginate$DsDuremJuram> dsDuremJuram;

  @override
  List<Object> get props => [total, lastPage, dsDuremJuram];
  Map<String, dynamic> toJson() =>
      _$PaginateduremJuram$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query with EquatableMixin {
  PaginateduremJuram$Query();

  factory PaginateduremJuram$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateduremJuram$QueryFromJson(json);

  PaginateduremJuram$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateduremJuram$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MUlsHuuliArguments extends JsonSerializable with EquatableMixin {
  MUlsHuuliArguments({@required this.page, @required this.size});

  @override
  factory MUlsHuuliArguments.fromJson(Map<String, dynamic> json) =>
      _$MUlsHuuliArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$MUlsHuuliArgumentsToJson(this);
}

class MUlsHuuliQuery extends GraphQLQuery<MUlsHuuli$Query, MUlsHuuliArguments> {
  MUlsHuuliQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'm_uls_huuli'),
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
                    name: NameNode(value: 'aa_m_uls_huuli'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'holboos'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'huuli'),
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
                          name: NameNode(value: 'zaalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sub_m_uls_huuli_zaalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
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
                                name: NameNode(value: 'zaalt'),
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
  final String operationName = 'm_uls_huuli';

  @override
  final MUlsHuuliArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MUlsHuuli$Query parse(Map<String, dynamic> json) =>
      MUlsHuuli$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UlsIhHuralTogtoolArguments extends JsonSerializable with EquatableMixin {
  UlsIhHuralTogtoolArguments({@required this.page, @required this.size});

  @override
  factory UlsIhHuralTogtoolArguments.fromJson(Map<String, dynamic> json) =>
      _$UlsIhHuralTogtoolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$UlsIhHuralTogtoolArgumentsToJson(this);
}

class UlsIhHuralTogtoolQuery
    extends GraphQLQuery<UlsIhHuralTogtool$Query, UlsIhHuralTogtoolArguments> {
  UlsIhHuralTogtoolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'uls_ih_hural_togtool'),
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
                    name: NameNode(value: 'aa_uls_ih_hural_togtool'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'holhoos'),
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
                          name: NameNode(value: 'togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'zaalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sub_uih_zaalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
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
                                name: NameNode(value: 'zaalt'),
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
  final String operationName = 'uls_ih_hural_togtool';

  @override
  final UlsIhHuralTogtoolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UlsIhHuralTogtool$Query parse(Map<String, dynamic> json) =>
      UlsIhHuralTogtool$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatebodbarbichigArguments extends JsonSerializable
    with EquatableMixin {
  PaginatebodbarbichigArguments({@required this.page, @required this.size});

  @override
  factory PaginatebodbarbichigArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatebodbarbichigArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatebodbarbichigArgumentsToJson(this);
}

class PaginatebodbarbichigQuery extends GraphQLQuery<Paginatebodbarbichig$Query,
    PaginatebodbarbichigArguments> {
  PaginatebodbarbichigQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatebodbarbichig'),
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
                    name: NameNode(value: 'ds_bodlogo_barimt_bichig'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'holboos'),
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
                          name: NameNode(value: 'ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'salbar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'salbar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_sh_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginatebodbarbichig';

  @override
  final PaginatebodbarbichigArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Paginatebodbarbichig$Query parse(Map<String, dynamic> json) =>
      Paginatebodbarbichig$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatezgTogtoolArguments extends JsonSerializable with EquatableMixin {
  PaginatezgTogtoolArguments({@required this.page, @required this.size});

  @override
  factory PaginatezgTogtoolArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatezgTogtoolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatezgTogtoolArgumentsToJson(this);
}

class PaginatezgTogtoolQuery
    extends GraphQLQuery<PaginatezgTogtool$Query, PaginatezgTogtoolArguments> {
  PaginatezgTogtoolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatezg_togtool'),
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
                    name: NameNode(value: 'aa_zg_togtool'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'holboos'),
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
                          name: NameNode(value: 'togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'zaalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sub_zg_togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
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
                                name: NameNode(value: 'zaalt'),
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
  final String operationName = 'paginatezg_togtool';

  @override
  final PaginatezgTogtoolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatezgTogtool$Query parse(Map<String, dynamic> json) =>
      PaginatezgTogtool$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuramArguments extends JsonSerializable with EquatableMixin {
  PaginateduremJuramArguments({@required this.page, @required this.size});

  @override
  factory PaginateduremJuramArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateduremJuramArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateduremJuramArgumentsToJson(this);
}

class PaginateduremJuramQuery extends GraphQLQuery<PaginateduremJuram$Query,
    PaginateduremJuramArguments> {
  PaginateduremJuramQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatedurem_juram'),
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
                    name: NameNode(value: 'ds_durem_juram'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'akt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'e_zuin_akt_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'file'),
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
                          name: NameNode(value: 'ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tuhai'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginatedurem_juram';

  @override
  final PaginateduremJuramArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateduremJuram$Query parse(Map<String, dynamic> json) =>
      PaginateduremJuram$Query.fromJson(json);
}
