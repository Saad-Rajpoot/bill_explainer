// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserSettingsModelCollection on Isar {
  IsarCollection<UserSettingsModel> get userSettingsModels => this.collection();
}

const UserSettingsModelSchema = CollectionSchema(
  name: r'UserSettingsModel',
  id: 1840420974923084997,
  properties: {
    r'darkMode': PropertySchema(
      id: 0,
      name: r'darkMode',
      type: IsarType.bool,
    ),
    r'discoName': PropertySchema(
      id: 1,
      name: r'discoName',
      type: IsarType.string,
    ),
    r'isPremium': PropertySchema(
      id: 2,
      name: r'isPremium',
      type: IsarType.bool,
    )
  },
  estimateSize: _userSettingsModelEstimateSize,
  serialize: _userSettingsModelSerialize,
  deserialize: _userSettingsModelDeserialize,
  deserializeProp: _userSettingsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userSettingsModelGetId,
  getLinks: _userSettingsModelGetLinks,
  attach: _userSettingsModelAttach,
  version: '3.1.0+1',
);

int _userSettingsModelEstimateSize(
  UserSettingsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.discoName.length * 3;
  return bytesCount;
}

void _userSettingsModelSerialize(
  UserSettingsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.darkMode);
  writer.writeString(offsets[1], object.discoName);
  writer.writeBool(offsets[2], object.isPremium);
}

UserSettingsModel _userSettingsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserSettingsModel();
  object.darkMode = reader.readBool(offsets[0]);
  object.discoName = reader.readString(offsets[1]);
  object.id = id;
  object.isPremium = reader.readBool(offsets[2]);
  return object;
}

P _userSettingsModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userSettingsModelGetId(UserSettingsModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userSettingsModelGetLinks(
    UserSettingsModel object) {
  return [];
}

void _userSettingsModelAttach(
    IsarCollection<dynamic> col, Id id, UserSettingsModel object) {
  object.id = id;
}

extension UserSettingsModelQueryWhereSort
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QWhere> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserSettingsModelQueryWhere
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QWhereClause> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterWhereClause>
      idBetween(
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

extension UserSettingsModelQueryFilter
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QFilterCondition> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      darkModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'darkMode',
        value: value,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discoName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discoName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      discoNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discoName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterFilterCondition>
      isPremiumEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPremium',
        value: value,
      ));
    });
  }
}

extension UserSettingsModelQueryObject
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QFilterCondition> {}

extension UserSettingsModelQueryLinks
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QFilterCondition> {}

extension UserSettingsModelQuerySortBy
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QSortBy> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.desc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByDiscoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByDiscoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.desc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByIsPremium() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPremium', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      sortByIsPremiumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPremium', Sort.desc);
    });
  }
}

extension UserSettingsModelQuerySortThenBy
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QSortThenBy> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.desc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByDiscoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByDiscoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.desc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByIsPremium() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPremium', Sort.asc);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QAfterSortBy>
      thenByIsPremiumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPremium', Sort.desc);
    });
  }
}

extension UserSettingsModelQueryWhereDistinct
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QDistinct> {
  QueryBuilder<UserSettingsModel, UserSettingsModel, QDistinct>
      distinctByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'darkMode');
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QDistinct>
      distinctByDiscoName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discoName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserSettingsModel, UserSettingsModel, QDistinct>
      distinctByIsPremium() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPremium');
    });
  }
}

extension UserSettingsModelQueryProperty
    on QueryBuilder<UserSettingsModel, UserSettingsModel, QQueryProperty> {
  QueryBuilder<UserSettingsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserSettingsModel, bool, QQueryOperations> darkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'darkMode');
    });
  }

  QueryBuilder<UserSettingsModel, String, QQueryOperations>
      discoNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discoName');
    });
  }

  QueryBuilder<UserSettingsModel, bool, QQueryOperations> isPremiumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPremium');
    });
  }
}
