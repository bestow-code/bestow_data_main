import 'package:bestow_data/bestow_data_model.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ContainerImpl implements Container {
  ///
  ContainerImpl({
    this.id = 0,
  });

  ///
  @Id()
  int id;

  ///
  @Unique()
  final containerKey = ToOne<ContainerKey>();

  @override
  List<Containment> get containments => throw UnimplementedError();

  @override
  late final ContainerRef ref = containerKey.target!.ref;

  @override
  late final ContainerKind kind = containerKey.target!.kind;

  @override
  late final ContainerSize size = containerKey.target!.size;

  @override
  late final int number = containerKey.target!.number;
}

///
@Entity()
class ContainerKey {
  ///
  ContainerKey({
    required this.refValue,
    required this.kindValue,
    required this.sizeValue,
    required this.number,
    this.id = 0,
  });

  ///
  final int number;

  ///
  @Id()
  int id;

  ///
  @Unique()
  final String refValue;

  ///
  final int kindValue;

  ///
  final int sizeValue;

  ///
  late final ContainerRef ref = ContainerRef(refValue);

  ///
  late final ContainerKind kind = ContainerKind.lookUp(kindValue);

  ///
  late final ContainerSize size = ContainerSize.lookUp(sizeValue);
}
