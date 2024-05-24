import 'package:hive/hive.dart';
part 'contact_model.g.dart';

@HiveType(typeId: 0)
class ContactModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String phone;
  @HiveField(2)
  String email;
  @HiveField(3)
  String fanction;
  @HiveField(4) // إضافة حقل لحفظ مسار الصورة
  String? imagePath; // مسار الصورة

  ContactModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.fanction,
    this.imagePath, // تحديث المُعرف ليقبل الصورة
  });
}
