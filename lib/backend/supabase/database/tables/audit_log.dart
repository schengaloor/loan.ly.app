import '../database.dart';

class AuditLogTable extends SupabaseTable<AuditLogRow> {
  @override
  String get tableName => 'audit_log';

  @override
  AuditLogRow createRow(Map<String, dynamic> data) => AuditLogRow(data);
}

class AuditLogRow extends SupabaseDataRow {
  AuditLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuditLogTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get eventType => getField<String>('event_type')!;
  set eventType(String value) => setField<String>('event_type', value);

  dynamic? get dataField => getField<dynamic>('data');
  set dataField(dynamic? value) => setField<dynamic>('data', value);

  String get hash => getField<String>('hash')!;
  set hash(String value) => setField<String>('hash', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
