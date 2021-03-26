// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'huuli_togtoolmj.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt
    with EquatableMixin {
  Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt();

  factory Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltFromJson(
          json);

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String zaalt;

  @override
  List<Object> get props => [id, tableId, zaalt];
  Map<String, dynamic> toJson() =>
      _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Paginatemuhuuli$Query$Paginate$AaMUlsHuuli with EquatableMixin {
  Paginatemuhuuli$Query$Paginate$AaMUlsHuuli();

  factory Paginatemuhuuli$Query$Paginate$AaMUlsHuuli.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuliFromJson(json);

  String holboos;

  String huuli;

  int id;

  String zaalt;

  @JsonKey(name: 'sub_m_uls_huuli_zaalt')
  List<Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt>
      subMUlsHuuliZaalt;

  @override
  List<Object> get props => [holboos, huuli, id, zaalt, subMUlsHuuliZaalt];
  Map<String, dynamic> toJson() =>
      _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuliToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatemuhuuli$Query$Paginate with EquatableMixin {
  Paginatemuhuuli$Query$Paginate();

  factory Paginatemuhuuli$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$Paginatemuhuuli$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_m_uls_huuli')
  List<Paginatemuhuuli$Query$Paginate$AaMUlsHuuli> aaMUlsHuuli;

  @override
  List<Object> get props => [total, lastPage, aaMUlsHuuli];
  Map<String, dynamic> toJson() => _$Paginatemuhuuli$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatemuhuuli$Query with EquatableMixin {
  Paginatemuhuuli$Query();

  factory Paginatemuhuuli$Query.fromJson(Map<String, dynamic> json) =>
      _$Paginatemuhuuli$QueryFromJson(json);

  Paginatemuhuuli$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Paginatemuhuuli$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt
    with EquatableMixin {
  PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt();

  factory PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltFromJson(
          json);

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String zaalt;

  @override
  List<Object> get props => [id, tableId, zaalt];
  Map<String, dynamic> toJson() =>
      _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool with EquatableMixin {
  PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool();

  factory PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool.fromJson(
          Map<String, dynamic> json) =>
      _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtoolFromJson(json);

  String holhoos;

  int id;

  String togtool;

  String zaalt;

  @JsonKey(name: 'sub_uih_zaalt')
  List<PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt>
      subUihZaalt;

  @override
  List<Object> get props => [holhoos, id, togtool, zaalt, subUihZaalt];
  Map<String, dynamic> toJson() =>
      _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtoolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginauihTogtool$Query$Paginate with EquatableMixin {
  PaginauihTogtool$Query$Paginate();

  factory PaginauihTogtool$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginauihTogtool$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_uls_ih_hural_togtool')
  List<PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool> aaUlsIhHuralTogtool;

  @override
  List<Object> get props => [total, lastPage, aaUlsIhHuralTogtool];
  Map<String, dynamic> toJson() =>
      _$PaginauihTogtool$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginauihTogtool$Query with EquatableMixin {
  PaginauihTogtool$Query();

  factory PaginauihTogtool$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginauihTogtool$QueryFromJson(json);

  PaginauihTogtool$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginauihTogtool$QueryToJson(this);
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
class PaginatemuhuuliArguments extends JsonSerializable with EquatableMixin {
  PaginatemuhuuliArguments({@required this.page, @required this.size});

  @override
  factory PaginatemuhuuliArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatemuhuuliArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatemuhuuliArgumentsToJson(this);
}

class PaginatemuhuuliQuery
    extends GraphQLQuery<Paginatemuhuuli$Query, PaginatemuhuuliArguments> {
  PaginatemuhuuliQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatemuhuuli'),
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
  final String operationName = 'paginatemuhuuli';

  @override
  final PaginatemuhuuliArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Paginatemuhuuli$Query parse(Map<String, dynamic> json) =>
      Paginatemuhuuli$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginauihTogtoolArguments extends JsonSerializable with EquatableMixin {
  PaginauihTogtoolArguments({@required this.page, @required this.size});

  @override
  factory PaginauihTogtoolArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginauihTogtoolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginauihTogtoolArgumentsToJson(this);
}

class PaginauihTogtoolQuery
    extends GraphQLQuery<PaginauihTogtool$Query, PaginauihTogtoolArguments> {
  PaginauihTogtoolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginauih_togtool'),
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
  final String operationName = 'paginauih_togtool';

  @override
  final PaginauihTogtoolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginauihTogtool$Query parse(Map<String, dynamic> json) =>
      PaginauihTogtool$Query.fromJson(json);
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
