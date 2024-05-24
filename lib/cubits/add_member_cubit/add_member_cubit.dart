import 'package:bloc/bloc.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());

  addMember({required ContactModel member, String? imagePath}) async {
    emit(AddMemberLoading());
    try {
      var contactBox = Hive.box<ContactModel>('contact');

      var updatedMember = ContactModel(
        name: member.name,
        phone: member.phone,
        email: member.email,
        fanction: member.fanction,
        imagePath: imagePath, // تحديث مسار الصورة
      );

      await contactBox.add(updatedMember);

      emit(AddMemberSuccess());
    } catch (e) {
      emit(AddMemberFailuer(errMessadge: e.toString()));
    }
  }
}
