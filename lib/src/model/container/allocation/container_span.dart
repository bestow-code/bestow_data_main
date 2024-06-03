import 'package:bestow_data/bestow_data_model.dart' as api;
import 'package:bestow_data_main/src/model/model.dart';
import 'package:objectbox/objectbox.dart';

///
class ContainerSpanImpl implements api.ContainerSpan {
  ///
  ContainerSpanImpl({
    required this.containerSizeId,
    required this.idx,
    required this.length,
    this.id = 0,
  });

  ///
  // factory ContainerSpanImpl.from(
  //   api.ContainerSize containerSize,
  //   int spanLength,
  // ) =>
  //     ContainerSpanImpl(containerSize.id, spanLength);

  ///
  @Id()
  int id;

  ///
  @override
  final int length;

  ///
  final allocationToOne = ToOne<ContainerAllocationImpl>();

  ///
  final int containerSizeId;

  @override
  api.ContainerAllocation get allocation => allocationToOne.target!;

  @override
  api.ContainerSize get size => api.ContainerSize.lookUp(containerSizeId);

  @override
  List<api.Container> get containers => throw UnimplementedError();

  ///
  final int idx;

  @override
  api.ContainerKind get kind => throw UnimplementedError();

  @override
  int get start => throw UnimplementedError();
}
