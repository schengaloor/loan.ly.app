import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get phone => getField<String>('phone')!;
  set phone(String value) => setField<String>('phone', value);

  int? get trustScore => getField<int>('trust_score');
  set trustScore(int? value) => setField<int>('trust_score', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get communityId => getField<String>('community_id');
  set communityId(String? value) => setField<String>('community_id', value);
}
