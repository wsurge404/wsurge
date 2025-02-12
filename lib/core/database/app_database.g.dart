// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProfileEntriesTable extends ProfileEntries
    with TableInfo<$ProfileEntriesTable, ProfileEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ProfileType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ProfileType>($ProfileEntriesTable.$convertertype);
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
      'active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("active" IN (0, 1))'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updateIntervalMeta =
      const VerificationMeta('updateInterval');
  @override
  late final GeneratedColumnWithTypeConverter<Duration?, int> updateInterval =
      GeneratedColumn<int>('update_interval', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<Duration?>(
              $ProfileEntriesTable.$converterupdateIntervaln);
  static const VerificationMeta _uploadMeta = const VerificationMeta('upload');
  @override
  late final GeneratedColumn<int> upload = GeneratedColumn<int>(
      'upload', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _downloadMeta =
      const VerificationMeta('download');
  @override
  late final GeneratedColumn<int> download = GeneratedColumn<int>(
      'download', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<int> total = GeneratedColumn<int>(
      'total', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _expireMeta = const VerificationMeta('expire');
  @override
  late final GeneratedColumn<DateTime> expire = GeneratedColumn<DateTime>(
      'expire', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _webPageUrlMeta =
      const VerificationMeta('webPageUrl');
  @override
  late final GeneratedColumn<String> webPageUrl = GeneratedColumn<String>(
      'web_page_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _supportUrlMeta =
      const VerificationMeta('supportUrl');
  @override
  late final GeneratedColumn<String> supportUrl = GeneratedColumn<String>(
      'support_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _testUrlMeta =
      const VerificationMeta('testUrl');
  @override
  late final GeneratedColumn<String> testUrl = GeneratedColumn<String>(
      'test_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        active,
        name,
        url,
        lastUpdate,
        updateInterval,
        upload,
        download,
        total,
        expire,
        webPageUrl,
        supportUrl,
        testUrl
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile_entries';
  @override
  VerificationContext validateIntegrity(Insertable<ProfileEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    } else if (isInserting) {
      context.missing(_activeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    context.handle(_updateIntervalMeta, const VerificationResult.success());
    if (data.containsKey('upload')) {
      context.handle(_uploadMeta,
          upload.isAcceptableOrUnknown(data['upload']!, _uploadMeta));
    }
    if (data.containsKey('download')) {
      context.handle(_downloadMeta,
          download.isAcceptableOrUnknown(data['download']!, _downloadMeta));
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));
    }
    if (data.containsKey('expire')) {
      context.handle(_expireMeta,
          expire.isAcceptableOrUnknown(data['expire']!, _expireMeta));
    }
    if (data.containsKey('web_page_url')) {
      context.handle(
          _webPageUrlMeta,
          webPageUrl.isAcceptableOrUnknown(
              data['web_page_url']!, _webPageUrlMeta));
    }
    if (data.containsKey('support_url')) {
      context.handle(
          _supportUrlMeta,
          supportUrl.isAcceptableOrUnknown(
              data['support_url']!, _supportUrlMeta));
    }
    if (data.containsKey('test_url')) {
      context.handle(_testUrlMeta,
          testUrl.isAcceptableOrUnknown(data['test_url']!, _testUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProfileEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      type: $ProfileEntriesTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      active: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}active'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update'])!,
      updateInterval: $ProfileEntriesTable.$converterupdateIntervaln.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}update_interval'])),
      upload: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}upload']),
      download: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}download']),
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total']),
      expire: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expire']),
      webPageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}web_page_url']),
      supportUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}support_url']),
      testUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}test_url']),
    );
  }

  @override
  $ProfileEntriesTable createAlias(String alias) {
    return $ProfileEntriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ProfileType, String, String> $convertertype =
      const EnumNameConverter<ProfileType>(ProfileType.values);
  static TypeConverter<Duration, int> $converterupdateInterval =
      DurationTypeConverter();
  static TypeConverter<Duration?, int?> $converterupdateIntervaln =
      NullAwareTypeConverter.wrap($converterupdateInterval);
}

class ProfileEntry extends DataClass implements Insertable<ProfileEntry> {
  final String id;
  final ProfileType type;
  final bool active;
  final String name;
  final String? url;
  final DateTime lastUpdate;
  final Duration? updateInterval;
  final int? upload;
  final int? download;
  final int? total;
  final DateTime? expire;
  final String? webPageUrl;
  final String? supportUrl;
  final String? testUrl;
  const ProfileEntry(
      {required this.id,
      required this.type,
      required this.active,
      required this.name,
      this.url,
      required this.lastUpdate,
      this.updateInterval,
      this.upload,
      this.download,
      this.total,
      this.expire,
      this.webPageUrl,
      this.supportUrl,
      this.testUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    {
      map['type'] =
          Variable<String>($ProfileEntriesTable.$convertertype.toSql(type));
    }
    map['active'] = Variable<bool>(active);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    map['last_update'] = Variable<DateTime>(lastUpdate);
    if (!nullToAbsent || updateInterval != null) {
      map['update_interval'] = Variable<int>(
          $ProfileEntriesTable.$converterupdateIntervaln.toSql(updateInterval));
    }
    if (!nullToAbsent || upload != null) {
      map['upload'] = Variable<int>(upload);
    }
    if (!nullToAbsent || download != null) {
      map['download'] = Variable<int>(download);
    }
    if (!nullToAbsent || total != null) {
      map['total'] = Variable<int>(total);
    }
    if (!nullToAbsent || expire != null) {
      map['expire'] = Variable<DateTime>(expire);
    }
    if (!nullToAbsent || webPageUrl != null) {
      map['web_page_url'] = Variable<String>(webPageUrl);
    }
    if (!nullToAbsent || supportUrl != null) {
      map['support_url'] = Variable<String>(supportUrl);
    }
    if (!nullToAbsent || testUrl != null) {
      map['test_url'] = Variable<String>(testUrl);
    }
    return map;
  }

  ProfileEntriesCompanion toCompanion(bool nullToAbsent) {
    return ProfileEntriesCompanion(
      id: Value(id),
      type: Value(type),
      active: Value(active),
      name: Value(name),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      lastUpdate: Value(lastUpdate),
      updateInterval: updateInterval == null && nullToAbsent
          ? const Value.absent()
          : Value(updateInterval),
      upload:
          upload == null && nullToAbsent ? const Value.absent() : Value(upload),
      download: download == null && nullToAbsent
          ? const Value.absent()
          : Value(download),
      total:
          total == null && nullToAbsent ? const Value.absent() : Value(total),
      expire:
          expire == null && nullToAbsent ? const Value.absent() : Value(expire),
      webPageUrl: webPageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(webPageUrl),
      supportUrl: supportUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(supportUrl),
      testUrl: testUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(testUrl),
    );
  }

  factory ProfileEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileEntry(
      id: serializer.fromJson<String>(json['id']),
      type: $ProfileEntriesTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      active: serializer.fromJson<bool>(json['active']),
      name: serializer.fromJson<String>(json['name']),
      url: serializer.fromJson<String?>(json['url']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
      updateInterval: serializer.fromJson<Duration?>(json['updateInterval']),
      upload: serializer.fromJson<int?>(json['upload']),
      download: serializer.fromJson<int?>(json['download']),
      total: serializer.fromJson<int?>(json['total']),
      expire: serializer.fromJson<DateTime?>(json['expire']),
      webPageUrl: serializer.fromJson<String?>(json['webPageUrl']),
      supportUrl: serializer.fromJson<String?>(json['supportUrl']),
      testUrl: serializer.fromJson<String?>(json['testUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer
          .toJson<String>($ProfileEntriesTable.$convertertype.toJson(type)),
      'active': serializer.toJson<bool>(active),
      'name': serializer.toJson<String>(name),
      'url': serializer.toJson<String?>(url),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
      'updateInterval': serializer.toJson<Duration?>(updateInterval),
      'upload': serializer.toJson<int?>(upload),
      'download': serializer.toJson<int?>(download),
      'total': serializer.toJson<int?>(total),
      'expire': serializer.toJson<DateTime?>(expire),
      'webPageUrl': serializer.toJson<String?>(webPageUrl),
      'supportUrl': serializer.toJson<String?>(supportUrl),
      'testUrl': serializer.toJson<String?>(testUrl),
    };
  }

  ProfileEntry copyWith(
          {String? id,
          ProfileType? type,
          bool? active,
          String? name,
          Value<String?> url = const Value.absent(),
          DateTime? lastUpdate,
          Value<Duration?> updateInterval = const Value.absent(),
          Value<int?> upload = const Value.absent(),
          Value<int?> download = const Value.absent(),
          Value<int?> total = const Value.absent(),
          Value<DateTime?> expire = const Value.absent(),
          Value<String?> webPageUrl = const Value.absent(),
          Value<String?> supportUrl = const Value.absent(),
          Value<String?> testUrl = const Value.absent()}) =>
      ProfileEntry(
        id: id ?? this.id,
        type: type ?? this.type,
        active: active ?? this.active,
        name: name ?? this.name,
        url: url.present ? url.value : this.url,
        lastUpdate: lastUpdate ?? this.lastUpdate,
        updateInterval:
            updateInterval.present ? updateInterval.value : this.updateInterval,
        upload: upload.present ? upload.value : this.upload,
        download: download.present ? download.value : this.download,
        total: total.present ? total.value : this.total,
        expire: expire.present ? expire.value : this.expire,
        webPageUrl: webPageUrl.present ? webPageUrl.value : this.webPageUrl,
        supportUrl: supportUrl.present ? supportUrl.value : this.supportUrl,
        testUrl: testUrl.present ? testUrl.value : this.testUrl,
      );
  ProfileEntry copyWithCompanion(ProfileEntriesCompanion data) {
    return ProfileEntry(
      id: data.id.present ? data.id.value : this.id,
      type: data.type.present ? data.type.value : this.type,
      active: data.active.present ? data.active.value : this.active,
      name: data.name.present ? data.name.value : this.name,
      url: data.url.present ? data.url.value : this.url,
      lastUpdate:
          data.lastUpdate.present ? data.lastUpdate.value : this.lastUpdate,
      updateInterval: data.updateInterval.present
          ? data.updateInterval.value
          : this.updateInterval,
      upload: data.upload.present ? data.upload.value : this.upload,
      download: data.download.present ? data.download.value : this.download,
      total: data.total.present ? data.total.value : this.total,
      expire: data.expire.present ? data.expire.value : this.expire,
      webPageUrl:
          data.webPageUrl.present ? data.webPageUrl.value : this.webPageUrl,
      supportUrl:
          data.supportUrl.present ? data.supportUrl.value : this.supportUrl,
      testUrl: data.testUrl.present ? data.testUrl.value : this.testUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileEntry(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('active: $active, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('updateInterval: $updateInterval, ')
          ..write('upload: $upload, ')
          ..write('download: $download, ')
          ..write('total: $total, ')
          ..write('expire: $expire, ')
          ..write('webPageUrl: $webPageUrl, ')
          ..write('supportUrl: $supportUrl, ')
          ..write('testUrl: $testUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      type,
      active,
      name,
      url,
      lastUpdate,
      updateInterval,
      upload,
      download,
      total,
      expire,
      webPageUrl,
      supportUrl,
      testUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileEntry &&
          other.id == this.id &&
          other.type == this.type &&
          other.active == this.active &&
          other.name == this.name &&
          other.url == this.url &&
          other.lastUpdate == this.lastUpdate &&
          other.updateInterval == this.updateInterval &&
          other.upload == this.upload &&
          other.download == this.download &&
          other.total == this.total &&
          other.expire == this.expire &&
          other.webPageUrl == this.webPageUrl &&
          other.supportUrl == this.supportUrl &&
          other.testUrl == this.testUrl);
}

class ProfileEntriesCompanion extends UpdateCompanion<ProfileEntry> {
  final Value<String> id;
  final Value<ProfileType> type;
  final Value<bool> active;
  final Value<String> name;
  final Value<String?> url;
  final Value<DateTime> lastUpdate;
  final Value<Duration?> updateInterval;
  final Value<int?> upload;
  final Value<int?> download;
  final Value<int?> total;
  final Value<DateTime?> expire;
  final Value<String?> webPageUrl;
  final Value<String?> supportUrl;
  final Value<String?> testUrl;
  final Value<int> rowid;
  const ProfileEntriesCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.active = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.updateInterval = const Value.absent(),
    this.upload = const Value.absent(),
    this.download = const Value.absent(),
    this.total = const Value.absent(),
    this.expire = const Value.absent(),
    this.webPageUrl = const Value.absent(),
    this.supportUrl = const Value.absent(),
    this.testUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileEntriesCompanion.insert({
    required String id,
    required ProfileType type,
    required bool active,
    required String name,
    this.url = const Value.absent(),
    required DateTime lastUpdate,
    this.updateInterval = const Value.absent(),
    this.upload = const Value.absent(),
    this.download = const Value.absent(),
    this.total = const Value.absent(),
    this.expire = const Value.absent(),
    this.webPageUrl = const Value.absent(),
    this.supportUrl = const Value.absent(),
    this.testUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        type = Value(type),
        active = Value(active),
        name = Value(name),
        lastUpdate = Value(lastUpdate);
  static Insertable<ProfileEntry> custom({
    Expression<String>? id,
    Expression<String>? type,
    Expression<bool>? active,
    Expression<String>? name,
    Expression<String>? url,
    Expression<DateTime>? lastUpdate,
    Expression<int>? updateInterval,
    Expression<int>? upload,
    Expression<int>? download,
    Expression<int>? total,
    Expression<DateTime>? expire,
    Expression<String>? webPageUrl,
    Expression<String>? supportUrl,
    Expression<String>? testUrl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (active != null) 'active': active,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (updateInterval != null) 'update_interval': updateInterval,
      if (upload != null) 'upload': upload,
      if (download != null) 'download': download,
      if (total != null) 'total': total,
      if (expire != null) 'expire': expire,
      if (webPageUrl != null) 'web_page_url': webPageUrl,
      if (supportUrl != null) 'support_url': supportUrl,
      if (testUrl != null) 'test_url': testUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileEntriesCompanion copyWith(
      {Value<String>? id,
      Value<ProfileType>? type,
      Value<bool>? active,
      Value<String>? name,
      Value<String?>? url,
      Value<DateTime>? lastUpdate,
      Value<Duration?>? updateInterval,
      Value<int?>? upload,
      Value<int?>? download,
      Value<int?>? total,
      Value<DateTime?>? expire,
      Value<String?>? webPageUrl,
      Value<String?>? supportUrl,
      Value<String?>? testUrl,
      Value<int>? rowid}) {
    return ProfileEntriesCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      active: active ?? this.active,
      name: name ?? this.name,
      url: url ?? this.url,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      updateInterval: updateInterval ?? this.updateInterval,
      upload: upload ?? this.upload,
      download: download ?? this.download,
      total: total ?? this.total,
      expire: expire ?? this.expire,
      webPageUrl: webPageUrl ?? this.webPageUrl,
      supportUrl: supportUrl ?? this.supportUrl,
      testUrl: testUrl ?? this.testUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $ProfileEntriesTable.$convertertype.toSql(type.value));
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    if (updateInterval.present) {
      map['update_interval'] = Variable<int>($ProfileEntriesTable
          .$converterupdateIntervaln
          .toSql(updateInterval.value));
    }
    if (upload.present) {
      map['upload'] = Variable<int>(upload.value);
    }
    if (download.present) {
      map['download'] = Variable<int>(download.value);
    }
    if (total.present) {
      map['total'] = Variable<int>(total.value);
    }
    if (expire.present) {
      map['expire'] = Variable<DateTime>(expire.value);
    }
    if (webPageUrl.present) {
      map['web_page_url'] = Variable<String>(webPageUrl.value);
    }
    if (supportUrl.present) {
      map['support_url'] = Variable<String>(supportUrl.value);
    }
    if (testUrl.present) {
      map['test_url'] = Variable<String>(testUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileEntriesCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('active: $active, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('updateInterval: $updateInterval, ')
          ..write('upload: $upload, ')
          ..write('download: $download, ')
          ..write('total: $total, ')
          ..write('expire: $expire, ')
          ..write('webPageUrl: $webPageUrl, ')
          ..write('supportUrl: $supportUrl, ')
          ..write('testUrl: $testUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MitmHostEntriesTable extends MitmHostEntries
    with TableInfo<$MitmHostEntriesTable, MitmHostEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MitmHostEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enableMeta = const VerificationMeta('enable');
  @override
  late final GeneratedColumn<bool> enable = GeneratedColumn<bool>(
      'enable', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enable" IN (0, 1))'));
  static const VerificationMeta _hostnameMeta =
      const VerificationMeta('hostname');
  @override
  late final GeneratedColumn<String> hostname =
      GeneratedColumn<String>('hostname', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, enable, hostname];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mitm_host_entries';
  @override
  VerificationContext validateIntegrity(Insertable<MitmHostEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('enable')) {
      context.handle(_enableMeta,
          enable.isAcceptableOrUnknown(data['enable']!, _enableMeta));
    } else if (isInserting) {
      context.missing(_enableMeta);
    }
    if (data.containsKey('hostname')) {
      context.handle(_hostnameMeta,
          hostname.isAcceptableOrUnknown(data['hostname']!, _hostnameMeta));
    } else if (isInserting) {
      context.missing(_hostnameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MitmHostEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MitmHostEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      enable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enable'])!,
      hostname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hostname'])!,
    );
  }

  @override
  $MitmHostEntriesTable createAlias(String alias) {
    return $MitmHostEntriesTable(attachedDatabase, alias);
  }
}

class MitmHostEntry extends DataClass implements Insertable<MitmHostEntry> {
  final String id;
  final bool enable;
  final String hostname;
  const MitmHostEntry(
      {required this.id, required this.enable, required this.hostname});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['enable'] = Variable<bool>(enable);
    map['hostname'] = Variable<String>(hostname);
    return map;
  }

  MitmHostEntriesCompanion toCompanion(bool nullToAbsent) {
    return MitmHostEntriesCompanion(
      id: Value(id),
      enable: Value(enable),
      hostname: Value(hostname),
    );
  }

  factory MitmHostEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MitmHostEntry(
      id: serializer.fromJson<String>(json['id']),
      enable: serializer.fromJson<bool>(json['enable']),
      hostname: serializer.fromJson<String>(json['hostname']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'enable': serializer.toJson<bool>(enable),
      'hostname': serializer.toJson<String>(hostname),
    };
  }

  MitmHostEntry copyWith({String? id, bool? enable, String? hostname}) =>
      MitmHostEntry(
        id: id ?? this.id,
        enable: enable ?? this.enable,
        hostname: hostname ?? this.hostname,
      );
  MitmHostEntry copyWithCompanion(MitmHostEntriesCompanion data) {
    return MitmHostEntry(
      id: data.id.present ? data.id.value : this.id,
      enable: data.enable.present ? data.enable.value : this.enable,
      hostname: data.hostname.present ? data.hostname.value : this.hostname,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MitmHostEntry(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('hostname: $hostname')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, enable, hostname);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MitmHostEntry &&
          other.id == this.id &&
          other.enable == this.enable &&
          other.hostname == this.hostname);
}

class MitmHostEntriesCompanion extends UpdateCompanion<MitmHostEntry> {
  final Value<String> id;
  final Value<bool> enable;
  final Value<String> hostname;
  final Value<int> rowid;
  const MitmHostEntriesCompanion({
    this.id = const Value.absent(),
    this.enable = const Value.absent(),
    this.hostname = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MitmHostEntriesCompanion.insert({
    required String id,
    required bool enable,
    required String hostname,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        enable = Value(enable),
        hostname = Value(hostname);
  static Insertable<MitmHostEntry> custom({
    Expression<String>? id,
    Expression<bool>? enable,
    Expression<String>? hostname,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enable != null) 'enable': enable,
      if (hostname != null) 'hostname': hostname,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MitmHostEntriesCompanion copyWith(
      {Value<String>? id,
      Value<bool>? enable,
      Value<String>? hostname,
      Value<int>? rowid}) {
    return MitmHostEntriesCompanion(
      id: id ?? this.id,
      enable: enable ?? this.enable,
      hostname: hostname ?? this.hostname,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (enable.present) {
      map['enable'] = Variable<bool>(enable.value);
    }
    if (hostname.present) {
      map['hostname'] = Variable<String>(hostname.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MitmHostEntriesCompanion(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('hostname: $hostname, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MitmRuleEntriesTable extends MitmRuleEntries
    with TableInfo<$MitmRuleEntriesTable, MitmRuleEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MitmRuleEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enableMeta = const VerificationMeta('enable');
  @override
  late final GeneratedColumn<bool> enable = GeneratedColumn<bool>(
      'enable', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enable" IN (0, 1))'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<MitmRuleType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<MitmRuleType>($MitmRuleEntriesTable.$convertertype);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlRegexMeta =
      const VerificationMeta('urlRegex');
  @override
  late final GeneratedColumn<String> urlRegex = GeneratedColumn<String>(
      'url_regex', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _scriptsPathMeta =
      const VerificationMeta('scriptsPath');
  @override
  late final GeneratedColumn<String> scriptsPath = GeneratedColumn<String>(
      'scripts_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _replaceContentMeta =
      const VerificationMeta('replaceContent');
  @override
  late final GeneratedColumn<String> replaceContent = GeneratedColumn<String>(
      'replace_content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        enable,
        type,
        name,
        urlRegex,
        scriptsPath,
        replaceContent,
        lastUpdate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mitm_rule_entries';
  @override
  VerificationContext validateIntegrity(Insertable<MitmRuleEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('enable')) {
      context.handle(_enableMeta,
          enable.isAcceptableOrUnknown(data['enable']!, _enableMeta));
    } else if (isInserting) {
      context.missing(_enableMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('url_regex')) {
      context.handle(_urlRegexMeta,
          urlRegex.isAcceptableOrUnknown(data['url_regex']!, _urlRegexMeta));
    }
    if (data.containsKey('scripts_path')) {
      context.handle(
          _scriptsPathMeta,
          scriptsPath.isAcceptableOrUnknown(
              data['scripts_path']!, _scriptsPathMeta));
    }
    if (data.containsKey('replace_content')) {
      context.handle(
          _replaceContentMeta,
          replaceContent.isAcceptableOrUnknown(
              data['replace_content']!, _replaceContentMeta));
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MitmRuleEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MitmRuleEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      enable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enable'])!,
      type: $MitmRuleEntriesTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      urlRegex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url_regex']),
      scriptsPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scripts_path']),
      replaceContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}replace_content']),
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update'])!,
    );
  }

  @override
  $MitmRuleEntriesTable createAlias(String alias) {
    return $MitmRuleEntriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MitmRuleType, String, String> $convertertype =
      const EnumNameConverter<MitmRuleType>(MitmRuleType.values);
}

class MitmRuleEntry extends DataClass implements Insertable<MitmRuleEntry> {
  final String id;
  final bool enable;
  final MitmRuleType type;
  final String? name;
  final String? urlRegex;
  final String? scriptsPath;
  final String? replaceContent;
  final DateTime lastUpdate;
  const MitmRuleEntry(
      {required this.id,
      required this.enable,
      required this.type,
      this.name,
      this.urlRegex,
      this.scriptsPath,
      this.replaceContent,
      required this.lastUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['enable'] = Variable<bool>(enable);
    {
      map['type'] =
          Variable<String>($MitmRuleEntriesTable.$convertertype.toSql(type));
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || urlRegex != null) {
      map['url_regex'] = Variable<String>(urlRegex);
    }
    if (!nullToAbsent || scriptsPath != null) {
      map['scripts_path'] = Variable<String>(scriptsPath);
    }
    if (!nullToAbsent || replaceContent != null) {
      map['replace_content'] = Variable<String>(replaceContent);
    }
    map['last_update'] = Variable<DateTime>(lastUpdate);
    return map;
  }

  MitmRuleEntriesCompanion toCompanion(bool nullToAbsent) {
    return MitmRuleEntriesCompanion(
      id: Value(id),
      enable: Value(enable),
      type: Value(type),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      urlRegex: urlRegex == null && nullToAbsent
          ? const Value.absent()
          : Value(urlRegex),
      scriptsPath: scriptsPath == null && nullToAbsent
          ? const Value.absent()
          : Value(scriptsPath),
      replaceContent: replaceContent == null && nullToAbsent
          ? const Value.absent()
          : Value(replaceContent),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory MitmRuleEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MitmRuleEntry(
      id: serializer.fromJson<String>(json['id']),
      enable: serializer.fromJson<bool>(json['enable']),
      type: $MitmRuleEntriesTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      name: serializer.fromJson<String?>(json['name']),
      urlRegex: serializer.fromJson<String?>(json['urlRegex']),
      scriptsPath: serializer.fromJson<String?>(json['scriptsPath']),
      replaceContent: serializer.fromJson<String?>(json['replaceContent']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'enable': serializer.toJson<bool>(enable),
      'type': serializer
          .toJson<String>($MitmRuleEntriesTable.$convertertype.toJson(type)),
      'name': serializer.toJson<String?>(name),
      'urlRegex': serializer.toJson<String?>(urlRegex),
      'scriptsPath': serializer.toJson<String?>(scriptsPath),
      'replaceContent': serializer.toJson<String?>(replaceContent),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
    };
  }

  MitmRuleEntry copyWith(
          {String? id,
          bool? enable,
          MitmRuleType? type,
          Value<String?> name = const Value.absent(),
          Value<String?> urlRegex = const Value.absent(),
          Value<String?> scriptsPath = const Value.absent(),
          Value<String?> replaceContent = const Value.absent(),
          DateTime? lastUpdate}) =>
      MitmRuleEntry(
        id: id ?? this.id,
        enable: enable ?? this.enable,
        type: type ?? this.type,
        name: name.present ? name.value : this.name,
        urlRegex: urlRegex.present ? urlRegex.value : this.urlRegex,
        scriptsPath: scriptsPath.present ? scriptsPath.value : this.scriptsPath,
        replaceContent:
            replaceContent.present ? replaceContent.value : this.replaceContent,
        lastUpdate: lastUpdate ?? this.lastUpdate,
      );
  MitmRuleEntry copyWithCompanion(MitmRuleEntriesCompanion data) {
    return MitmRuleEntry(
      id: data.id.present ? data.id.value : this.id,
      enable: data.enable.present ? data.enable.value : this.enable,
      type: data.type.present ? data.type.value : this.type,
      name: data.name.present ? data.name.value : this.name,
      urlRegex: data.urlRegex.present ? data.urlRegex.value : this.urlRegex,
      scriptsPath:
          data.scriptsPath.present ? data.scriptsPath.value : this.scriptsPath,
      replaceContent: data.replaceContent.present
          ? data.replaceContent.value
          : this.replaceContent,
      lastUpdate:
          data.lastUpdate.present ? data.lastUpdate.value : this.lastUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MitmRuleEntry(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('urlRegex: $urlRegex, ')
          ..write('scriptsPath: $scriptsPath, ')
          ..write('replaceContent: $replaceContent, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, enable, type, name, urlRegex, scriptsPath,
      replaceContent, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MitmRuleEntry &&
          other.id == this.id &&
          other.enable == this.enable &&
          other.type == this.type &&
          other.name == this.name &&
          other.urlRegex == this.urlRegex &&
          other.scriptsPath == this.scriptsPath &&
          other.replaceContent == this.replaceContent &&
          other.lastUpdate == this.lastUpdate);
}

class MitmRuleEntriesCompanion extends UpdateCompanion<MitmRuleEntry> {
  final Value<String> id;
  final Value<bool> enable;
  final Value<MitmRuleType> type;
  final Value<String?> name;
  final Value<String?> urlRegex;
  final Value<String?> scriptsPath;
  final Value<String?> replaceContent;
  final Value<DateTime> lastUpdate;
  final Value<int> rowid;
  const MitmRuleEntriesCompanion({
    this.id = const Value.absent(),
    this.enable = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.urlRegex = const Value.absent(),
    this.scriptsPath = const Value.absent(),
    this.replaceContent = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MitmRuleEntriesCompanion.insert({
    required String id,
    required bool enable,
    required MitmRuleType type,
    this.name = const Value.absent(),
    this.urlRegex = const Value.absent(),
    this.scriptsPath = const Value.absent(),
    this.replaceContent = const Value.absent(),
    required DateTime lastUpdate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        enable = Value(enable),
        type = Value(type),
        lastUpdate = Value(lastUpdate);
  static Insertable<MitmRuleEntry> custom({
    Expression<String>? id,
    Expression<bool>? enable,
    Expression<String>? type,
    Expression<String>? name,
    Expression<String>? urlRegex,
    Expression<String>? scriptsPath,
    Expression<String>? replaceContent,
    Expression<DateTime>? lastUpdate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enable != null) 'enable': enable,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (urlRegex != null) 'url_regex': urlRegex,
      if (scriptsPath != null) 'scripts_path': scriptsPath,
      if (replaceContent != null) 'replace_content': replaceContent,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MitmRuleEntriesCompanion copyWith(
      {Value<String>? id,
      Value<bool>? enable,
      Value<MitmRuleType>? type,
      Value<String?>? name,
      Value<String?>? urlRegex,
      Value<String?>? scriptsPath,
      Value<String?>? replaceContent,
      Value<DateTime>? lastUpdate,
      Value<int>? rowid}) {
    return MitmRuleEntriesCompanion(
      id: id ?? this.id,
      enable: enable ?? this.enable,
      type: type ?? this.type,
      name: name ?? this.name,
      urlRegex: urlRegex ?? this.urlRegex,
      scriptsPath: scriptsPath ?? this.scriptsPath,
      replaceContent: replaceContent ?? this.replaceContent,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (enable.present) {
      map['enable'] = Variable<bool>(enable.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $MitmRuleEntriesTable.$convertertype.toSql(type.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (urlRegex.present) {
      map['url_regex'] = Variable<String>(urlRegex.value);
    }
    if (scriptsPath.present) {
      map['scripts_path'] = Variable<String>(scriptsPath.value);
    }
    if (replaceContent.present) {
      map['replace_content'] = Variable<String>(replaceContent.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MitmRuleEntriesCompanion(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('urlRegex: $urlRegex, ')
          ..write('scriptsPath: $scriptsPath, ')
          ..write('replaceContent: $replaceContent, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MitmConfigEntriesTable extends MitmConfigEntries
    with TableInfo<$MitmConfigEntriesTable, MitmConfigEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MitmConfigEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enableMeta = const VerificationMeta('enable');
  @override
  late final GeneratedColumn<bool> enable = GeneratedColumn<bool>(
      'enable', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enable" IN (0, 1))'));
  static const VerificationMeta _certFileMeta =
      const VerificationMeta('certFile');
  @override
  late final GeneratedColumn<String> certFile = GeneratedColumn<String>(
      'cert_file', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _keyFileMeta =
      const VerificationMeta('keyFile');
  @override
  late final GeneratedColumn<String> keyFile = GeneratedColumn<String>(
      'key_file', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastUpdateMeta =
      const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
      'last_update', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, enable, certFile, keyFile, lastUpdate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mitm_config_entries';
  @override
  VerificationContext validateIntegrity(Insertable<MitmConfigEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('enable')) {
      context.handle(_enableMeta,
          enable.isAcceptableOrUnknown(data['enable']!, _enableMeta));
    } else if (isInserting) {
      context.missing(_enableMeta);
    }
    if (data.containsKey('cert_file')) {
      context.handle(_certFileMeta,
          certFile.isAcceptableOrUnknown(data['cert_file']!, _certFileMeta));
    }
    if (data.containsKey('key_file')) {
      context.handle(_keyFileMeta,
          keyFile.isAcceptableOrUnknown(data['key_file']!, _keyFileMeta));
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MitmConfigEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MitmConfigEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      enable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enable'])!,
      certFile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cert_file']),
      keyFile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key_file']),
      lastUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_update'])!,
    );
  }

  @override
  $MitmConfigEntriesTable createAlias(String alias) {
    return $MitmConfigEntriesTable(attachedDatabase, alias);
  }
}

class MitmConfigEntry extends DataClass implements Insertable<MitmConfigEntry> {
  final String id;
  final bool enable;
  final String? certFile;
  final String? keyFile;
  final DateTime lastUpdate;
  const MitmConfigEntry(
      {required this.id,
      required this.enable,
      this.certFile,
      this.keyFile,
      required this.lastUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['enable'] = Variable<bool>(enable);
    if (!nullToAbsent || certFile != null) {
      map['cert_file'] = Variable<String>(certFile);
    }
    if (!nullToAbsent || keyFile != null) {
      map['key_file'] = Variable<String>(keyFile);
    }
    map['last_update'] = Variable<DateTime>(lastUpdate);
    return map;
  }

  MitmConfigEntriesCompanion toCompanion(bool nullToAbsent) {
    return MitmConfigEntriesCompanion(
      id: Value(id),
      enable: Value(enable),
      certFile: certFile == null && nullToAbsent
          ? const Value.absent()
          : Value(certFile),
      keyFile: keyFile == null && nullToAbsent
          ? const Value.absent()
          : Value(keyFile),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory MitmConfigEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MitmConfigEntry(
      id: serializer.fromJson<String>(json['id']),
      enable: serializer.fromJson<bool>(json['enable']),
      certFile: serializer.fromJson<String?>(json['certFile']),
      keyFile: serializer.fromJson<String?>(json['keyFile']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'enable': serializer.toJson<bool>(enable),
      'certFile': serializer.toJson<String?>(certFile),
      'keyFile': serializer.toJson<String?>(keyFile),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
    };
  }

  MitmConfigEntry copyWith(
          {String? id,
          bool? enable,
          Value<String?> certFile = const Value.absent(),
          Value<String?> keyFile = const Value.absent(),
          DateTime? lastUpdate}) =>
      MitmConfigEntry(
        id: id ?? this.id,
        enable: enable ?? this.enable,
        certFile: certFile.present ? certFile.value : this.certFile,
        keyFile: keyFile.present ? keyFile.value : this.keyFile,
        lastUpdate: lastUpdate ?? this.lastUpdate,
      );
  MitmConfigEntry copyWithCompanion(MitmConfigEntriesCompanion data) {
    return MitmConfigEntry(
      id: data.id.present ? data.id.value : this.id,
      enable: data.enable.present ? data.enable.value : this.enable,
      certFile: data.certFile.present ? data.certFile.value : this.certFile,
      keyFile: data.keyFile.present ? data.keyFile.value : this.keyFile,
      lastUpdate:
          data.lastUpdate.present ? data.lastUpdate.value : this.lastUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MitmConfigEntry(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('certFile: $certFile, ')
          ..write('keyFile: $keyFile, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, enable, certFile, keyFile, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MitmConfigEntry &&
          other.id == this.id &&
          other.enable == this.enable &&
          other.certFile == this.certFile &&
          other.keyFile == this.keyFile &&
          other.lastUpdate == this.lastUpdate);
}

class MitmConfigEntriesCompanion extends UpdateCompanion<MitmConfigEntry> {
  final Value<String> id;
  final Value<bool> enable;
  final Value<String?> certFile;
  final Value<String?> keyFile;
  final Value<DateTime> lastUpdate;
  final Value<int> rowid;
  const MitmConfigEntriesCompanion({
    this.id = const Value.absent(),
    this.enable = const Value.absent(),
    this.certFile = const Value.absent(),
    this.keyFile = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MitmConfigEntriesCompanion.insert({
    required String id,
    required bool enable,
    this.certFile = const Value.absent(),
    this.keyFile = const Value.absent(),
    required DateTime lastUpdate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        enable = Value(enable),
        lastUpdate = Value(lastUpdate);
  static Insertable<MitmConfigEntry> custom({
    Expression<String>? id,
    Expression<bool>? enable,
    Expression<String>? certFile,
    Expression<String>? keyFile,
    Expression<DateTime>? lastUpdate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enable != null) 'enable': enable,
      if (certFile != null) 'cert_file': certFile,
      if (keyFile != null) 'key_file': keyFile,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MitmConfigEntriesCompanion copyWith(
      {Value<String>? id,
      Value<bool>? enable,
      Value<String?>? certFile,
      Value<String?>? keyFile,
      Value<DateTime>? lastUpdate,
      Value<int>? rowid}) {
    return MitmConfigEntriesCompanion(
      id: id ?? this.id,
      enable: enable ?? this.enable,
      certFile: certFile ?? this.certFile,
      keyFile: keyFile ?? this.keyFile,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (enable.present) {
      map['enable'] = Variable<bool>(enable.value);
    }
    if (certFile.present) {
      map['cert_file'] = Variable<String>(certFile.value);
    }
    if (keyFile.present) {
      map['key_file'] = Variable<String>(keyFile.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MitmConfigEntriesCompanion(')
          ..write('id: $id, ')
          ..write('enable: $enable, ')
          ..write('certFile: $certFile, ')
          ..write('keyFile: $keyFile, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProfileEntriesTable profileEntries = $ProfileEntriesTable(this);
  late final $MitmHostEntriesTable mitmHostEntries =
      $MitmHostEntriesTable(this);
  late final $MitmRuleEntriesTable mitmRuleEntries =
      $MitmRuleEntriesTable(this);
  late final $MitmConfigEntriesTable mitmConfigEntries =
      $MitmConfigEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [profileEntries, mitmHostEntries, mitmRuleEntries, mitmConfigEntries];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ProfileEntriesTableCreateCompanionBuilder = ProfileEntriesCompanion
    Function({
  required String id,
  required ProfileType type,
  required bool active,
  required String name,
  Value<String?> url,
  required DateTime lastUpdate,
  Value<Duration?> updateInterval,
  Value<int?> upload,
  Value<int?> download,
  Value<int?> total,
  Value<DateTime?> expire,
  Value<String?> webPageUrl,
  Value<String?> supportUrl,
  Value<String?> testUrl,
  Value<int> rowid,
});
typedef $$ProfileEntriesTableUpdateCompanionBuilder = ProfileEntriesCompanion
    Function({
  Value<String> id,
  Value<ProfileType> type,
  Value<bool> active,
  Value<String> name,
  Value<String?> url,
  Value<DateTime> lastUpdate,
  Value<Duration?> updateInterval,
  Value<int?> upload,
  Value<int?> download,
  Value<int?> total,
  Value<DateTime?> expire,
  Value<String?> webPageUrl,
  Value<String?> supportUrl,
  Value<String?> testUrl,
  Value<int> rowid,
});

class $$ProfileEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $ProfileEntriesTable> {
  $$ProfileEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ProfileType, ProfileType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get active => $composableBuilder(
      column: $table.active, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Duration?, Duration, int> get updateInterval =>
      $composableBuilder(
          column: $table.updateInterval,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get upload => $composableBuilder(
      column: $table.upload, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get download => $composableBuilder(
      column: $table.download, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expire => $composableBuilder(
      column: $table.expire, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get webPageUrl => $composableBuilder(
      column: $table.webPageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get supportUrl => $composableBuilder(
      column: $table.supportUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get testUrl => $composableBuilder(
      column: $table.testUrl, builder: (column) => ColumnFilters(column));
}

class $$ProfileEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfileEntriesTable> {
  $$ProfileEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get active => $composableBuilder(
      column: $table.active, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updateInterval => $composableBuilder(
      column: $table.updateInterval,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get upload => $composableBuilder(
      column: $table.upload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get download => $composableBuilder(
      column: $table.download, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expire => $composableBuilder(
      column: $table.expire, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get webPageUrl => $composableBuilder(
      column: $table.webPageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get supportUrl => $composableBuilder(
      column: $table.supportUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get testUrl => $composableBuilder(
      column: $table.testUrl, builder: (column) => ColumnOrderings(column));
}

class $$ProfileEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfileEntriesTable> {
  $$ProfileEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ProfileType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Duration?, int> get updateInterval =>
      $composableBuilder(
          column: $table.updateInterval, builder: (column) => column);

  GeneratedColumn<int> get upload =>
      $composableBuilder(column: $table.upload, builder: (column) => column);

  GeneratedColumn<int> get download =>
      $composableBuilder(column: $table.download, builder: (column) => column);

  GeneratedColumn<int> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<DateTime> get expire =>
      $composableBuilder(column: $table.expire, builder: (column) => column);

  GeneratedColumn<String> get webPageUrl => $composableBuilder(
      column: $table.webPageUrl, builder: (column) => column);

  GeneratedColumn<String> get supportUrl => $composableBuilder(
      column: $table.supportUrl, builder: (column) => column);

  GeneratedColumn<String> get testUrl =>
      $composableBuilder(column: $table.testUrl, builder: (column) => column);
}

class $$ProfileEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfileEntriesTable,
    ProfileEntry,
    $$ProfileEntriesTableFilterComposer,
    $$ProfileEntriesTableOrderingComposer,
    $$ProfileEntriesTableAnnotationComposer,
    $$ProfileEntriesTableCreateCompanionBuilder,
    $$ProfileEntriesTableUpdateCompanionBuilder,
    (
      ProfileEntry,
      BaseReferences<_$AppDatabase, $ProfileEntriesTable, ProfileEntry>
    ),
    ProfileEntry,
    PrefetchHooks Function()> {
  $$ProfileEntriesTableTableManager(
      _$AppDatabase db, $ProfileEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<ProfileType> type = const Value.absent(),
            Value<bool> active = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<DateTime> lastUpdate = const Value.absent(),
            Value<Duration?> updateInterval = const Value.absent(),
            Value<int?> upload = const Value.absent(),
            Value<int?> download = const Value.absent(),
            Value<int?> total = const Value.absent(),
            Value<DateTime?> expire = const Value.absent(),
            Value<String?> webPageUrl = const Value.absent(),
            Value<String?> supportUrl = const Value.absent(),
            Value<String?> testUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileEntriesCompanion(
            id: id,
            type: type,
            active: active,
            name: name,
            url: url,
            lastUpdate: lastUpdate,
            updateInterval: updateInterval,
            upload: upload,
            download: download,
            total: total,
            expire: expire,
            webPageUrl: webPageUrl,
            supportUrl: supportUrl,
            testUrl: testUrl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required ProfileType type,
            required bool active,
            required String name,
            Value<String?> url = const Value.absent(),
            required DateTime lastUpdate,
            Value<Duration?> updateInterval = const Value.absent(),
            Value<int?> upload = const Value.absent(),
            Value<int?> download = const Value.absent(),
            Value<int?> total = const Value.absent(),
            Value<DateTime?> expire = const Value.absent(),
            Value<String?> webPageUrl = const Value.absent(),
            Value<String?> supportUrl = const Value.absent(),
            Value<String?> testUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfileEntriesCompanion.insert(
            id: id,
            type: type,
            active: active,
            name: name,
            url: url,
            lastUpdate: lastUpdate,
            updateInterval: updateInterval,
            upload: upload,
            download: download,
            total: total,
            expire: expire,
            webPageUrl: webPageUrl,
            supportUrl: supportUrl,
            testUrl: testUrl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProfileEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProfileEntriesTable,
    ProfileEntry,
    $$ProfileEntriesTableFilterComposer,
    $$ProfileEntriesTableOrderingComposer,
    $$ProfileEntriesTableAnnotationComposer,
    $$ProfileEntriesTableCreateCompanionBuilder,
    $$ProfileEntriesTableUpdateCompanionBuilder,
    (
      ProfileEntry,
      BaseReferences<_$AppDatabase, $ProfileEntriesTable, ProfileEntry>
    ),
    ProfileEntry,
    PrefetchHooks Function()>;
typedef $$MitmHostEntriesTableCreateCompanionBuilder = MitmHostEntriesCompanion
    Function({
  required String id,
  required bool enable,
  required String hostname,
  Value<int> rowid,
});
typedef $$MitmHostEntriesTableUpdateCompanionBuilder = MitmHostEntriesCompanion
    Function({
  Value<String> id,
  Value<bool> enable,
  Value<String> hostname,
  Value<int> rowid,
});

class $$MitmHostEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $MitmHostEntriesTable> {
  $$MitmHostEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hostname => $composableBuilder(
      column: $table.hostname, builder: (column) => ColumnFilters(column));
}

class $$MitmHostEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $MitmHostEntriesTable> {
  $$MitmHostEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hostname => $composableBuilder(
      column: $table.hostname, builder: (column) => ColumnOrderings(column));
}

class $$MitmHostEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MitmHostEntriesTable> {
  $$MitmHostEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get enable =>
      $composableBuilder(column: $table.enable, builder: (column) => column);

  GeneratedColumn<String> get hostname =>
      $composableBuilder(column: $table.hostname, builder: (column) => column);
}

class $$MitmHostEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MitmHostEntriesTable,
    MitmHostEntry,
    $$MitmHostEntriesTableFilterComposer,
    $$MitmHostEntriesTableOrderingComposer,
    $$MitmHostEntriesTableAnnotationComposer,
    $$MitmHostEntriesTableCreateCompanionBuilder,
    $$MitmHostEntriesTableUpdateCompanionBuilder,
    (
      MitmHostEntry,
      BaseReferences<_$AppDatabase, $MitmHostEntriesTable, MitmHostEntry>
    ),
    MitmHostEntry,
    PrefetchHooks Function()> {
  $$MitmHostEntriesTableTableManager(
      _$AppDatabase db, $MitmHostEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MitmHostEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MitmHostEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MitmHostEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<bool> enable = const Value.absent(),
            Value<String> hostname = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmHostEntriesCompanion(
            id: id,
            enable: enable,
            hostname: hostname,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required bool enable,
            required String hostname,
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmHostEntriesCompanion.insert(
            id: id,
            enable: enable,
            hostname: hostname,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MitmHostEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MitmHostEntriesTable,
    MitmHostEntry,
    $$MitmHostEntriesTableFilterComposer,
    $$MitmHostEntriesTableOrderingComposer,
    $$MitmHostEntriesTableAnnotationComposer,
    $$MitmHostEntriesTableCreateCompanionBuilder,
    $$MitmHostEntriesTableUpdateCompanionBuilder,
    (
      MitmHostEntry,
      BaseReferences<_$AppDatabase, $MitmHostEntriesTable, MitmHostEntry>
    ),
    MitmHostEntry,
    PrefetchHooks Function()>;
typedef $$MitmRuleEntriesTableCreateCompanionBuilder = MitmRuleEntriesCompanion
    Function({
  required String id,
  required bool enable,
  required MitmRuleType type,
  Value<String?> name,
  Value<String?> urlRegex,
  Value<String?> scriptsPath,
  Value<String?> replaceContent,
  required DateTime lastUpdate,
  Value<int> rowid,
});
typedef $$MitmRuleEntriesTableUpdateCompanionBuilder = MitmRuleEntriesCompanion
    Function({
  Value<String> id,
  Value<bool> enable,
  Value<MitmRuleType> type,
  Value<String?> name,
  Value<String?> urlRegex,
  Value<String?> scriptsPath,
  Value<String?> replaceContent,
  Value<DateTime> lastUpdate,
  Value<int> rowid,
});

class $$MitmRuleEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $MitmRuleEntriesTable> {
  $$MitmRuleEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MitmRuleType, MitmRuleType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get urlRegex => $composableBuilder(
      column: $table.urlRegex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get scriptsPath => $composableBuilder(
      column: $table.scriptsPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get replaceContent => $composableBuilder(
      column: $table.replaceContent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnFilters(column));
}

class $$MitmRuleEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $MitmRuleEntriesTable> {
  $$MitmRuleEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get urlRegex => $composableBuilder(
      column: $table.urlRegex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scriptsPath => $composableBuilder(
      column: $table.scriptsPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get replaceContent => $composableBuilder(
      column: $table.replaceContent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnOrderings(column));
}

class $$MitmRuleEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MitmRuleEntriesTable> {
  $$MitmRuleEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get enable =>
      $composableBuilder(column: $table.enable, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MitmRuleType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get urlRegex =>
      $composableBuilder(column: $table.urlRegex, builder: (column) => column);

  GeneratedColumn<String> get scriptsPath => $composableBuilder(
      column: $table.scriptsPath, builder: (column) => column);

  GeneratedColumn<String> get replaceContent => $composableBuilder(
      column: $table.replaceContent, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => column);
}

class $$MitmRuleEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MitmRuleEntriesTable,
    MitmRuleEntry,
    $$MitmRuleEntriesTableFilterComposer,
    $$MitmRuleEntriesTableOrderingComposer,
    $$MitmRuleEntriesTableAnnotationComposer,
    $$MitmRuleEntriesTableCreateCompanionBuilder,
    $$MitmRuleEntriesTableUpdateCompanionBuilder,
    (
      MitmRuleEntry,
      BaseReferences<_$AppDatabase, $MitmRuleEntriesTable, MitmRuleEntry>
    ),
    MitmRuleEntry,
    PrefetchHooks Function()> {
  $$MitmRuleEntriesTableTableManager(
      _$AppDatabase db, $MitmRuleEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MitmRuleEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MitmRuleEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MitmRuleEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<bool> enable = const Value.absent(),
            Value<MitmRuleType> type = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> urlRegex = const Value.absent(),
            Value<String?> scriptsPath = const Value.absent(),
            Value<String?> replaceContent = const Value.absent(),
            Value<DateTime> lastUpdate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmRuleEntriesCompanion(
            id: id,
            enable: enable,
            type: type,
            name: name,
            urlRegex: urlRegex,
            scriptsPath: scriptsPath,
            replaceContent: replaceContent,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required bool enable,
            required MitmRuleType type,
            Value<String?> name = const Value.absent(),
            Value<String?> urlRegex = const Value.absent(),
            Value<String?> scriptsPath = const Value.absent(),
            Value<String?> replaceContent = const Value.absent(),
            required DateTime lastUpdate,
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmRuleEntriesCompanion.insert(
            id: id,
            enable: enable,
            type: type,
            name: name,
            urlRegex: urlRegex,
            scriptsPath: scriptsPath,
            replaceContent: replaceContent,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MitmRuleEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MitmRuleEntriesTable,
    MitmRuleEntry,
    $$MitmRuleEntriesTableFilterComposer,
    $$MitmRuleEntriesTableOrderingComposer,
    $$MitmRuleEntriesTableAnnotationComposer,
    $$MitmRuleEntriesTableCreateCompanionBuilder,
    $$MitmRuleEntriesTableUpdateCompanionBuilder,
    (
      MitmRuleEntry,
      BaseReferences<_$AppDatabase, $MitmRuleEntriesTable, MitmRuleEntry>
    ),
    MitmRuleEntry,
    PrefetchHooks Function()>;
typedef $$MitmConfigEntriesTableCreateCompanionBuilder
    = MitmConfigEntriesCompanion Function({
  required String id,
  required bool enable,
  Value<String?> certFile,
  Value<String?> keyFile,
  required DateTime lastUpdate,
  Value<int> rowid,
});
typedef $$MitmConfigEntriesTableUpdateCompanionBuilder
    = MitmConfigEntriesCompanion Function({
  Value<String> id,
  Value<bool> enable,
  Value<String?> certFile,
  Value<String?> keyFile,
  Value<DateTime> lastUpdate,
  Value<int> rowid,
});

class $$MitmConfigEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $MitmConfigEntriesTable> {
  $$MitmConfigEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get certFile => $composableBuilder(
      column: $table.certFile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get keyFile => $composableBuilder(
      column: $table.keyFile, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnFilters(column));
}

class $$MitmConfigEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $MitmConfigEntriesTable> {
  $$MitmConfigEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get enable => $composableBuilder(
      column: $table.enable, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get certFile => $composableBuilder(
      column: $table.certFile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get keyFile => $composableBuilder(
      column: $table.keyFile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => ColumnOrderings(column));
}

class $$MitmConfigEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MitmConfigEntriesTable> {
  $$MitmConfigEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get enable =>
      $composableBuilder(column: $table.enable, builder: (column) => column);

  GeneratedColumn<String> get certFile =>
      $composableBuilder(column: $table.certFile, builder: (column) => column);

  GeneratedColumn<String> get keyFile =>
      $composableBuilder(column: $table.keyFile, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdate => $composableBuilder(
      column: $table.lastUpdate, builder: (column) => column);
}

class $$MitmConfigEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MitmConfigEntriesTable,
    MitmConfigEntry,
    $$MitmConfigEntriesTableFilterComposer,
    $$MitmConfigEntriesTableOrderingComposer,
    $$MitmConfigEntriesTableAnnotationComposer,
    $$MitmConfigEntriesTableCreateCompanionBuilder,
    $$MitmConfigEntriesTableUpdateCompanionBuilder,
    (
      MitmConfigEntry,
      BaseReferences<_$AppDatabase, $MitmConfigEntriesTable, MitmConfigEntry>
    ),
    MitmConfigEntry,
    PrefetchHooks Function()> {
  $$MitmConfigEntriesTableTableManager(
      _$AppDatabase db, $MitmConfigEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MitmConfigEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MitmConfigEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MitmConfigEntriesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<bool> enable = const Value.absent(),
            Value<String?> certFile = const Value.absent(),
            Value<String?> keyFile = const Value.absent(),
            Value<DateTime> lastUpdate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmConfigEntriesCompanion(
            id: id,
            enable: enable,
            certFile: certFile,
            keyFile: keyFile,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required bool enable,
            Value<String?> certFile = const Value.absent(),
            Value<String?> keyFile = const Value.absent(),
            required DateTime lastUpdate,
            Value<int> rowid = const Value.absent(),
          }) =>
              MitmConfigEntriesCompanion.insert(
            id: id,
            enable: enable,
            certFile: certFile,
            keyFile: keyFile,
            lastUpdate: lastUpdate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MitmConfigEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MitmConfigEntriesTable,
    MitmConfigEntry,
    $$MitmConfigEntriesTableFilterComposer,
    $$MitmConfigEntriesTableOrderingComposer,
    $$MitmConfigEntriesTableAnnotationComposer,
    $$MitmConfigEntriesTableCreateCompanionBuilder,
    $$MitmConfigEntriesTableUpdateCompanionBuilder,
    (
      MitmConfigEntry,
      BaseReferences<_$AppDatabase, $MitmConfigEntriesTable, MitmConfigEntry>
    ),
    MitmConfigEntry,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProfileEntriesTableTableManager get profileEntries =>
      $$ProfileEntriesTableTableManager(_db, _db.profileEntries);
  $$MitmHostEntriesTableTableManager get mitmHostEntries =>
      $$MitmHostEntriesTableTableManager(_db, _db.mitmHostEntries);
  $$MitmRuleEntriesTableTableManager get mitmRuleEntries =>
      $$MitmRuleEntriesTableTableManager(_db, _db.mitmRuleEntries);
  $$MitmConfigEntriesTableTableManager get mitmConfigEntries =>
      $$MitmConfigEntriesTableTableManager(_db, _db.mitmConfigEntries);
}
