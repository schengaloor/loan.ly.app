import '../database.dart';

class PrioritizedLoansTable extends SupabaseTable<PrioritizedLoansRow> {
  @override
  String get tableName => 'prioritized_loans';

  @override
  PrioritizedLoansRow createRow(Map<String, dynamic> data) =>
      PrioritizedLoansRow(data);
}

class PrioritizedLoansRow extends SupabaseDataRow {
  PrioritizedLoansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PrioritizedLoansTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get borrowerId => getField<String>('borrower_id');
  set borrowerId(String? value) => setField<String>('borrower_id', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get lenderName => getField<String>('lender_name');
  set lenderName(String? value) => setField<String>('lender_name', value);

  String? get emergencyType => getField<String>('emergency_type');
  set emergencyType(String? value) => setField<String>('emergency_type', value);

  int? get emergencyPriority => getField<int>('emergency_priority');
  set emergencyPriority(int? value) =>
      setField<int>('emergency_priority', value);

  double? get urgencyScore => getField<double>('urgency_score');
  set urgencyScore(double? value) => setField<double>('urgency_score', value);
}
