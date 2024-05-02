import 'package:bloc/bloc.dart';
import 'package:contact_app/model/contact_model.dart';
import 'package:meta/meta.dart';

part 'member_state.dart';

class MemberCubit extends Cubit<MemberState> {
  MemberCubit() : super(MemberInitial());
}
