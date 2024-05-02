import 'package:bloc/bloc.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'member_state.dart';

class MemberCubit extends Cubit<MemberState> {
  MemberCubit() : super(MemberInitial());
  List<ContactModel>? member;

  void fetchAllMember() {
    var contactBox = Hive.box<ContactModel>('contact');
    member = contactBox.values.toList();
  }
}
/**
 *     emit(MemberLoaded(member: member));
part 'member_state.dart';

class MemberCubit extends Cubit<MemberState> {
  MemberCubit() : super(MemberInitial());
  List<ContactModel>? member;
  fetchAllMember() {
    var contactBox = Hive.box<ContactModel>('contact');
    member = contactBox.values.toList();
  }
}
 */