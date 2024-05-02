import 'package:bloc/bloc.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());

  addMember(ContactModel member) async {
    emit(AddMemberLoading());
    try {
      var contactBox = Hive.box<ContactModel>('contact');
      await contactBox.add(member);

      emit(AddMemberSuccess());
    } catch (e) {
      emit(AddMemberFailuer(errMessadge: e.toString()));
      // TODO
    }
  }
}
