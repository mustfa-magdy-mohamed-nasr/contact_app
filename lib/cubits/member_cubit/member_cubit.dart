import 'package:bloc/bloc.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'member_state.dart';

class MemberCubit extends Cubit<MemberState> {
  MemberCubit() : super(MemberInitial());
  fetchAllMember() {
    try {
      var contactBox = Hive.box<ContactModel>('contact');
      List<ContactModel> member = contactBox.values.toList();
      emit(MemberSuccess(member: member));
    } catch (e) {
      emit(MemberFailuer(errMassage: e.toString()));
      // TODO
    }
  }
}
