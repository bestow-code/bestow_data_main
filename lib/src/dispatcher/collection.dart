///
abstract class CollectionView<T> {
  ///
  bool contains(int id) {
    throw UnimplementedError();
  }

  ///
  bool containsMany(List<int> ids) {
    throw UnimplementedError();
  }

  ///
  int count({int limit = 0}) {
    throw UnimplementedError();
  }

  ///
  T? get(int id) {
    throw UnimplementedError();
  }

  ///
  List<T> getAll() {
    throw UnimplementedError();
  }

  ///
  Future<List<T>> getAllAsync() {
    throw UnimplementedError();
  }

  ///
  Future<T?> getAsync(int id) {
    throw UnimplementedError();
  }

  ///
  List<T?> getMany(List<int> ids, {bool growableResult = false}) {
    throw UnimplementedError();
  }

  ///
  Future<List<T?>> getManyAsync(List<int> ids, {bool growableResult = false}) {
    throw UnimplementedError();
  }

  ///
  bool isEmpty() {
    throw UnimplementedError();
  }
}
