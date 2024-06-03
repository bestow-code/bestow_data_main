// class Query<T extends Object> implements api.Query<T> {
//   Query(this._query);
//
//   final objectbox.Query<T> _query;
//
//   @override
//   void close() => _query.close();
//
//   @override
//   int count() => _query.count();
//
//   @override
//   String describe() => _query.describe();
//
//   @override
//   String describeParameters() => _query.describeParameters();
//
//   @override
//   List<T> find() => _query.find();
//
//   @override
//   Future<List<T>> findAsync() => _query.findAsync();
//
//   @override
//   T? findFirst() => _query.findFirst();
//
//   @override
//   Future<T?> findFirstAsync() => _query.findFirstAsync();
//
//   @override
//   List<int> findIds() => _query.findIds();
//
//   @override
//   Future<List<int>> findIdsAsync() => _query.findIdsAsync();
//
//   @override
//   T? findUnique() => _query.findUnique();
//
//   @override
//   Future<T?> findUniqueAsync() => _query.findUniqueAsync();
//
//   @override
//   Stream<T> stream() => _query.stream();
//
//   @override
//   set limit(int limit) => _query.limit = limit;
//
//   @override
//   set offset(int offset) => _query.offset = offset;
// }
