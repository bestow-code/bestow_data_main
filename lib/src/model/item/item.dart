import 'package:bestow_data/bestow_data_model.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ItemImpl implements Item {
  ///
  ItemImpl({
    this.id = 0,
  });

  ///
  @Id()
  int id;

  @override
  Containment get containment => throw UnimplementedError();

  @override
  Image get image => imageToOne.target!;

  @override
  late final ItemRef ref = key.target!.ref;

  ///
  @Unique()
  final key = ToOne<ItemKey>();

  ///
  final imageToOne = ToOne<ImageImpl>();
}

///
@Entity()
class ItemKey {
  ///
  ItemKey({
    required this.refData,
    this.id = 0,
  });

  ///
  @Id()
  int id;

  ///
  @Unique()
  final String refData;

  ///
  late final ItemRef ref = ItemRef(refData);
}
