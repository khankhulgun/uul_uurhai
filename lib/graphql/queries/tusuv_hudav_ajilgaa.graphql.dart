// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tusuv_hudav_ajilgaa.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa
    with EquatableMixin {
  HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa();

  factory HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa.fromJson(
          Map<String, dynamic> json) =>
      _$HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaFromJson(json);

  @JsonKey(name: 'b_u_ner')
  String bUNer;

  @JsonKey(name: 'batlagdsan_ortog_ortov')
  double batlagdsanOrtogOrtov;

  @JsonKey(name: 'gereen_dun')
  double gereenDun;

  @JsonKey(name: 'guitsetgegch_b')
  String guitsetgegchB;

  @JsonKey(name: 'haa_torol')
  String haaTorol;

  @JsonKey(name: 'hab_u_id')
  int habUId;

  int id;

  DateTime ognoo;

  @JsonKey(name: 's_shalagruulalt_id')
  int sShalagruulaltId;

  String shalagruulalt;

  String tailbar;

  @JsonKey(name: 'tender_ognoo')
  DateTime tenderOgnoo;

  @override
  List<Object> get props => [
        bUNer,
        batlagdsanOrtogOrtov,
        gereenDun,
        guitsetgegchB,
        haaTorol,
        habUId,
        id,
        ognoo,
        sShalagruulaltId,
        shalagruulalt,
        tailbar,
        tenderOgnoo
      ];
  Map<String, dynamic> toJson() =>
      _$HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HudaldanAvahAjilgaa$Query$Paginate with EquatableMixin {
  HudaldanAvahAjilgaa$Query$Paginate();

  factory HudaldanAvahAjilgaa$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$HudaldanAvahAjilgaa$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_hudaldan_avah_ajilgaa')
  List<HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa>
      dsHudaldanAvahAjilgaa;

  @override
  List<Object> get props => [total, lastPage, dsHudaldanAvahAjilgaa];
  Map<String, dynamic> toJson() =>
      _$HudaldanAvahAjilgaa$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HudaldanAvahAjilgaa$Query with EquatableMixin {
  HudaldanAvahAjilgaa$Query();

  factory HudaldanAvahAjilgaa$Query.fromJson(Map<String, dynamic> json) =>
      _$HudaldanAvahAjilgaa$QueryFromJson(json);

  HudaldanAvahAjilgaa$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$HudaldanAvahAjilgaa$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TosviinOrlogo$Query$Paginate$DsTosviinOrlogo with EquatableMixin {
  TosviinOrlogo$Query$Paginate$DsTosviinOrlogo();

  factory TosviinOrlogo$Query$Paginate$DsTosviinOrlogo.fromJson(
          Map<String, dynamic> json) =>
      _$TosviinOrlogo$Query$Paginate$DsTosviinOrlogoFromJson(json);

  @JsonKey(name: 'b_tosov')
  double bTosov;

  int id;

  double jileer;

  DateTime ognoo;

  @JsonKey(name: 'orlogo_torol')
  String orlogoTorol;

  @JsonKey(name: 'orlogo_torol_id')
  int orlogoTorolId;

  @JsonKey(name: 't_tosov')
  double tTosov;

  @JsonKey(name: 't_uy_tolovlogoo')
  double tUyTolovlogoo;

  @JsonKey(name: 'tailan_uy_guitsetgel')
  double tailanUyGuitsetgel;

  @JsonKey(name: 'tailant_uy')
  double tailantUy;

  @override
  List<Object> get props => [
        bTosov,
        id,
        jileer,
        ognoo,
        orlogoTorol,
        orlogoTorolId,
        tTosov,
        tUyTolovlogoo,
        tailanUyGuitsetgel,
        tailantUy
      ];
  Map<String, dynamic> toJson() =>
      _$TosviinOrlogo$Query$Paginate$DsTosviinOrlogoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TosviinOrlogo$Query$Paginate with EquatableMixin {
  TosviinOrlogo$Query$Paginate();

  factory TosviinOrlogo$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$TosviinOrlogo$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_tosviin_orlogo')
  List<TosviinOrlogo$Query$Paginate$DsTosviinOrlogo> dsTosviinOrlogo;

  @override
  List<Object> get props => [total, lastPage, dsTosviinOrlogo];
  Map<String, dynamic> toJson() => _$TosviinOrlogo$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TosviinOrlogo$Query with EquatableMixin {
  TosviinOrlogo$Query();

  factory TosviinOrlogo$Query.fromJson(Map<String, dynamic> json) =>
      _$TosviinOrlogo$QueryFromJson(json);

  TosviinOrlogo$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$TosviinOrlogo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga with EquatableMixin {
  PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga();

  factory PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetosovZarlaga$Query$Paginate$DsTosovZarlagaFromJson(json);

  @JsonKey(name: 'b_tosov')
  double bTosov;

  double guitsetgel;

  double guitstgel;

  int id;

  DateTime ognoo;

  @JsonKey(name: 't_tosov')
  double tTosov;

  String torol;

  @JsonKey(name: 'zardal_torol_id')
  int zardalTorolId;

  @override
  List<Object> get props =>
      [bTosov, guitsetgel, guitstgel, id, ognoo, tTosov, torol, zardalTorolId];
  Map<String, dynamic> toJson() =>
      _$PaginatetosovZarlaga$Query$Paginate$DsTosovZarlagaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetosovZarlaga$Query$Paginate with EquatableMixin {
  PaginatetosovZarlaga$Query$Paginate();

  factory PaginatetosovZarlaga$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetosovZarlaga$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_tosov_zarlaga')
  List<PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga> dsTosovZarlaga;

  @override
  List<Object> get props => [total, lastPage, dsTosovZarlaga];
  Map<String, dynamic> toJson() =>
      _$PaginatetosovZarlaga$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetosovZarlaga$Query with EquatableMixin {
  PaginatetosovZarlaga$Query();

  factory PaginatetosovZarlaga$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatetosovZarlaga$QueryFromJson(json);

  PaginatetosovZarlaga$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatetosovZarlaga$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HudaldanAvahAjilgaaArguments extends JsonSerializable
    with EquatableMixin {
  HudaldanAvahAjilgaaArguments({@required this.page, @required this.size});

  @override
  factory HudaldanAvahAjilgaaArguments.fromJson(Map<String, dynamic> json) =>
      _$HudaldanAvahAjilgaaArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$HudaldanAvahAjilgaaArgumentsToJson(this);
}

class HudaldanAvahAjilgaaQuery extends GraphQLQuery<HudaldanAvahAjilgaa$Query,
    HudaldanAvahAjilgaaArguments> {
  HudaldanAvahAjilgaaQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'hudaldan_avah_ajilgaa'),
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
                    name: NameNode(value: 'ds_hudaldan_avah_ajilgaa'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_u_ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'batlagdsan_ortog_ortov'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'gereen_dun'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'guitsetgegch_b'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'haa_torol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hab_u_id'),
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
                          name: NameNode(value: 's_shalagruulalt_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'shalagruulalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tailbar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tender_ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'hudaldan_avah_ajilgaa';

  @override
  final HudaldanAvahAjilgaaArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  HudaldanAvahAjilgaa$Query parse(Map<String, dynamic> json) =>
      HudaldanAvahAjilgaa$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class TosviinOrlogoArguments extends JsonSerializable with EquatableMixin {
  TosviinOrlogoArguments({@required this.page, @required this.size});

  @override
  factory TosviinOrlogoArguments.fromJson(Map<String, dynamic> json) =>
      _$TosviinOrlogoArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$TosviinOrlogoArgumentsToJson(this);
}

class TosviinOrlogoQuery
    extends GraphQLQuery<TosviinOrlogo$Query, TosviinOrlogoArguments> {
  TosviinOrlogoQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'tosviin_orlogo'),
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
                    name: NameNode(value: 'ds_tosviin_orlogo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_tosov'),
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
                          name: NameNode(value: 'jileer'),
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
                          name: NameNode(value: 'orlogo_torol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'orlogo_torol_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_tosov'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_uy_tolovlogoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tailan_uy_guitsetgel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tailant_uy'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'tosviin_orlogo';

  @override
  final TosviinOrlogoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  TosviinOrlogo$Query parse(Map<String, dynamic> json) =>
      TosviinOrlogo$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatetosovZarlagaArguments extends JsonSerializable
    with EquatableMixin {
  PaginatetosovZarlagaArguments({@required this.page, @required this.size});

  @override
  factory PaginatetosovZarlagaArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatetosovZarlagaArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatetosovZarlagaArgumentsToJson(this);
}

class PaginatetosovZarlagaQuery extends GraphQLQuery<PaginatetosovZarlaga$Query,
    PaginatetosovZarlagaArguments> {
  PaginatetosovZarlagaQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatetosov_zarlaga'),
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
                    name: NameNode(value: 'ds_tosov_zarlaga'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_tosov'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'guitsetgel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'guitstgel'),
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
                          name: NameNode(value: 't_tosov'),
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
                          name: NameNode(value: 'zardal_torol_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginatetosov_zarlaga';

  @override
  final PaginatetosovZarlagaArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatetosovZarlaga$Query parse(Map<String, dynamic> json) =>
      PaginatetosovZarlaga$Query.fromJson(json);
}
