// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKeyModelCollection on Isar {
  IsarCollection<KeyModel> get keyModels => this.collection();
}

const KeyModelSchema = CollectionSchema(
  name: r'KeyModel',
  id: 1252562832686622172,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'private': PropertySchema(
      id: 1,
      name: r'private',
      type: IsarType.longList,
    ),
    r'public': PropertySchema(
      id: 2,
      name: r'public',
      type: IsarType.longList,
    )
  },
  estimateSize: _keyModelEstimateSize,
  serialize: _keyModelSerialize,
  deserialize: _keyModelDeserialize,
  deserializeProp: _keyModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _keyModelGetId,
  getLinks: _keyModelGetLinks,
  attach: _keyModelAttach,
  version: '3.1.0+1',
);

int _keyModelEstimateSize(
  KeyModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.private.length * 8;
  bytesCount += 3 + object.public.length * 8;
  return bytesCount;
}

void _keyModelSerialize(
  KeyModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLongList(offsets[1], object.private);
  writer.writeLongList(offsets[2], object.public);
}

KeyModel _keyModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KeyModel(
    name: reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  object.private = reader.readLongList(offsets[1]) ?? [];
  object.public = reader.readLongList(offsets[2]) ?? [];
  return object;
}

P _keyModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _keyModelGetId(KeyModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _keyModelGetLinks(KeyModel object) {
  return [];
}

void _keyModelAttach(IsarCollection<dynamic> col, Id id, KeyModel object) {
  object.id = id;
}

extension KeyModelQueryWhereSort on QueryBuilder<KeyModel, KeyModel, QWhere> {
  QueryBuilder<KeyModel, KeyModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KeyModelQueryWhere on QueryBuilder<KeyModel, KeyModel, QWhereClause> {
  QueryBuilder<KeyModel, KeyModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KeyModelQueryFilter
    on QueryBuilder<KeyModel, KeyModel, QFilterCondition> {
  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'private',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition>
      privateElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'private',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition>
      privateElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'private',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'private',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition>
      privateLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> privateLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'private',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'public',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition>
      publicElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'public',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'public',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'public',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition>
      publicLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterFilterCondition> publicLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'public',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension KeyModelQueryObject
    on QueryBuilder<KeyModel, KeyModel, QFilterCondition> {}

extension KeyModelQueryLinks
    on QueryBuilder<KeyModel, KeyModel, QFilterCondition> {}

extension KeyModelQuerySortBy on QueryBuilder<KeyModel, KeyModel, QSortBy> {
  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension KeyModelQuerySortThenBy
    on QueryBuilder<KeyModel, KeyModel, QSortThenBy> {
  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<KeyModel, KeyModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension KeyModelQueryWhereDistinct
    on QueryBuilder<KeyModel, KeyModel, QDistinct> {
  QueryBuilder<KeyModel, KeyModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KeyModel, KeyModel, QDistinct> distinctByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'private');
    });
  }

  QueryBuilder<KeyModel, KeyModel, QDistinct> distinctByPublic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'public');
    });
  }
}

extension KeyModelQueryProperty
    on QueryBuilder<KeyModel, KeyModel, QQueryProperty> {
  QueryBuilder<KeyModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KeyModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<KeyModel, List<int>, QQueryOperations> privateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'private');
    });
  }

  QueryBuilder<KeyModel, List<int>, QQueryOperations> publicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'public');
    });
  }
}
