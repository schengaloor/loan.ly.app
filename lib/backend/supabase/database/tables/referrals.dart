import '../database.dart';

class ReferralsTable extends SupabaseTable<ReferralsRow> {
  @override
  String get tableName => 'referrals';

  @override
  ReferralsRow createRow(Map<String, dynamic> data) => ReferralsRow(data);
}

class ReferralsRow extends SupabaseDataRow {
  ReferralsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReferralsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get borrowerId => getField<String>('borrower_id');
  set borrowerId(String? value) => setField<String>('borrower_id', value);

  String? get referrerId => getField<String>('referrer_id');
  set referrerId(String? value) => setField<String>('referrer_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
