import 'package:bestow_data/bestow_data_model.dart' as api;
import 'package:bestow_data_main/src/model/persistence/persistence.dart';
import 'package:objectbox/objectbox.dart';

///
class ContainerSpanImpl implements api.ContainerSpan {
  ///
  ContainerSpanImpl(
    this.containerSizeId,
    this.spanLength, {
    this.id = 0,
  });

  ///
  factory ContainerSpanImpl.from(
    api.ContainerSize containerSize,
    int spanLength,
  ) =>
      ContainerSpanImpl(containerSize.id, spanLength);

  ///
  @Id()
  int id;

  ///
  @override
  final int spanLength;

  ///
  final allocationToOne = ToOne<ContainerAllocationImpl>();

  ///
  final int containerSizeId;

  @override
  api.ContainerAllocation get allocation => allocationToOne.target!;

  @override
  api.ContainerSize get containerSize =>
      api.ContainerSize.lookUp(containerSizeId);
}
