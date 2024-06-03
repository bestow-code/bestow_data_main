import 'package:bestow_data/bestow_data_model.dart';
import 'package:bestow_data_main/src/model/persistence/persistence.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ImageImpl implements Image {
  ///
  ImageImpl({
    required this.refData,
    required this.token,
    this.dbId = 0,
  });

  ///
  @Id()
  int dbId;

  @override
  Item get item => itemToOne.target!;

  ///
  final itemToOne = ToOne<ItemImpl>();

  @override
  late final ImageRef ref = ImageRef(refData);

  ///
  @Unique()
  final String refData;

  @override
  final String token;
}
