import 'package:bestow_data/bestow_data_model.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ImageImpl implements Image {
  ///
  ImageImpl({
    required this.refData,
    required this.token,
    this.id = 0,
  });

  ///
  @Id()
  int id;

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
