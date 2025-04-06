import '../database.dart';

class ValidationsTable extends SupabaseTable<ValidationsRow> {
  @override
  String get tableName => 'validations';

  @override
  ValidationsRow createRow(Map<String, dynamic> data) => ValidationsRow(data);
}

class ValidationsRow extends SupabaseDataRow {
  ValidationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ValidationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get borrowerId => getField<String>('borrower_id');
  set borrowerId(String? value) => setField<String>('borrower_id', value);

  String? get validatorId => getField<String>('validator_id');
  set validatorId(String? value) => setField<String>('validator_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
