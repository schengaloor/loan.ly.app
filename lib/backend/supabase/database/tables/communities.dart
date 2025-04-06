import '../database.dart';

class CommunitiesTable extends SupabaseTable<CommunitiesRow> {
  @override
  String get tableName => 'communities';

  @override
  CommunitiesRow createRow(Map<String, dynamic> data) => CommunitiesRow(data);
}

class CommunitiesRow extends SupabaseDataRow {
  CommunitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommunitiesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get memberCount => getField<int>('member_count');
  set memberCount(int? value) => setField<int>('member_count', value);

  double? get riskPool => getField<double>('risk_pool');
  set riskPool(double? value) => setField<double>('risk_pool', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
