// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'heregjilt_guitsetgel.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginateajilHeseg$Query$Paginate$DsAjilHeseg with EquatableMixin {
  PaginateajilHeseg$Query$Paginate$DsAjilHeseg();

  factory PaginateajilHeseg$Query$Paginate$DsAjilHeseg.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilHeseg$Query$Paginate$DsAjilHesegFromJson(json);

  @JsonKey(name: 'a_heseg_id')
  int aHesegId;

  @JsonKey(name: 'ah_chig_id')
  String ahChigId;

  @JsonKey(name: 'ajil_heseg')
  String ajilHeseg;

  @JsonKey(name: 'b_gazar_id')
  int bGazarId;

  @JsonKey(name: 'g_huvi')
  String gHuvi;

  int id;

  String jil;

  @JsonKey(name: 'jil_id')
  int jilId;

  String salbar;

  String status;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'tu_dugaar')
  String tuDugaar;

  @JsonKey(name: 'yvnts_ognoo')
  DateTime yvntsOgnoo;

  @JsonKey(name: 'yvts_tailan')
  String yvtsTailan;

  @override
  List<Object> get props => [
        aHesegId,
        ahChigId,
        ajilHeseg,
        bGazarId,
        gHuvi,
        id,
        jil,
        jilId,
        salbar,
        status,
        tolovId,
        tuDugaar,
        yvntsOgnoo,
        yvtsTailan
      ];
  Map<String, dynamic> toJson() =>
      _$PaginateajilHeseg$Query$Paginate$DsAjilHesegToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilHeseg$Query$Paginate with EquatableMixin {
  PaginateajilHeseg$Query$Paginate();

  factory PaginateajilHeseg$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilHeseg$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_ajil_heseg')
  List<PaginateajilHeseg$Query$Paginate$DsAjilHeseg> dsAjilHeseg;

  @override
  List<Object> get props => [total, lastPage, dsAjilHeseg];
  Map<String, dynamic> toJson() =>
      _$PaginateajilHeseg$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilHeseg$Query with EquatableMixin {
  PaginateajilHeseg$Query();

  factory PaginateajilHeseg$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateajilHeseg$QueryFromJson(json);

  PaginateajilHeseg$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateajilHeseg$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH
    with EquatableMixin {
  PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH();

  factory PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTHFromJson(json);

  @JsonKey(name: 'h_baidal')
  String hBaidal;

  @JsonKey(name: 'h_eh_uusver_id')
  int hEhUusverId;

  @JsonKey(name: 'heregjilt_huvi')
  String heregjiltHuvi;

  String heregjuulegch;

  String horongooruulalt;

  String hugatsaa;

  int id;

  @JsonKey(name: 'tosliin_zardal')
  double tosliinZardal;

  @JsonKey(name: 'tosol_ner')
  String tosolNer;

  @JsonKey(name: 'tosovt_ortog')
  double tosovtOrtog;

  @override
  List<Object> get props => [
        hBaidal,
        hEhUusverId,
        heregjiltHuvi,
        heregjuulegch,
        horongooruulalt,
        hugatsaa,
        id,
        tosliinZardal,
        tosolNer,
        tosovtOrtog
      ];
  Map<String, dynamic> toJson() =>
      _$PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTHToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatehorOrTusulHut$Query$Paginate with EquatableMixin {
  PaginatehorOrTusulHut$Query$Paginate();

  factory PaginatehorOrTusulHut$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatehorOrTusulHut$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_horongo_oruulalt_t_h')
  List<PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH>
      dsHorongoOruulaltTH;

  @override
  List<Object> get props => [total, lastPage, dsHorongoOruulaltTH];
  Map<String, dynamic> toJson() =>
      _$PaginatehorOrTusulHut$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatehorOrTusulHut$Query with EquatableMixin {
  PaginatehorOrTusulHut$Query();

  factory PaginatehorOrTusulHut$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatehorOrTusulHut$QueryFromJson(json);

  PaginatehorOrTusulHut$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatehorOrTusulHut$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilHesegArguments extends JsonSerializable with EquatableMixin {
  PaginateajilHesegArguments({@required this.page, @required this.size});

  @override
  factory PaginateajilHesegArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateajilHesegArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateajilHesegArgumentsToJson(this);
}

class PaginateajilHesegQuery
    extends GraphQLQuery<PaginateajilHeseg$Query, PaginateajilHesegArguments> {
  PaginateajilHesegQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateajil_heseg'),
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
                    name: NameNode(value: 'ds_ajil_heseg'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_heseg_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ah_chig_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ajil_heseg'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_gazar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 'jil'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'jil_id'),
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
                          name: NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tolov_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tu_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'yvnts_ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'yvts_tailan'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginateajil_heseg';

  @override
  final PaginateajilHesegArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateajilHeseg$Query parse(Map<String, dynamic> json) =>
      PaginateajilHeseg$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatehorOrTusulHutArguments extends JsonSerializable
    with EquatableMixin {
  PaginatehorOrTusulHutArguments({@required this.page, @required this.size});

  @override
  factory PaginatehorOrTusulHutArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatehorOrTusulHutArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatehorOrTusulHutArgumentsToJson(this);
}

class PaginatehorOrTusulHutQuery extends GraphQLQuery<
    PaginatehorOrTusulHut$Query, PaginatehorOrTusulHutArguments> {
  PaginatehorOrTusulHutQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatehor_or_tusul_hut'),
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
                    name: NameNode(value: 'ds_horongo_oruulalt_t_h'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'h_baidal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'h_eh_uusver_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'heregjilt_huvi'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'heregjuulegch'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'horongooruulalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hugatsaa'),
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
                          name: NameNode(value: 'tosliin_zardal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tosol_ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tosovt_ortog'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginatehor_or_tusul_hut';

  @override
  final PaginatehorOrTusulHutArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatehorOrTusulHut$Query parse(Map<String, dynamic> json) =>
      PaginatehorOrTusulHut$Query.fromJson(json);
}
