// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const paginateMedee = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'paginateMedee'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'size')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'paginate'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'sorts'),
                value: _i1.ListValueNode(values: [
                  _i1.ObjectValueNode(fields: [
                    _i1.ObjectFieldNode(
                        name: _i1.NameNode(value: 'column'),
                        value:
                            _i1.StringValueNode(value: 'id', isBlock: false)),
                    _i1.ObjectFieldNode(
                        name: _i1.NameNode(value: 'order'),
                        value: _i1.EnumValueNode(
                            name: _i1.NameNode(value: 'desc')))
                  ])
                ])),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'page'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'page'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'size'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'size')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'last_page'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'ds_medee'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'id'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'medee'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'angilal'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'ognoo'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'tailbar'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [paginateMedee]);
