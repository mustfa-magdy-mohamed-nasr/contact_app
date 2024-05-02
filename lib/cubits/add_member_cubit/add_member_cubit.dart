import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_member_state.dart';

class AddMemberCubit extends Cubit<AddMemberState> {
  AddMemberCubit() : super(AddMemberInitial());
}
