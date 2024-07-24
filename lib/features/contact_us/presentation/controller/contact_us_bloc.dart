import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:petrolex/core/Helpers/enum_state.dart';

import '../../domain/use_cases/send_info_use_case.dart';

part 'contact_us_event.dart';

part 'contact_us_state.dart';

class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final SendInformationUserUseCase sendInformationUserUseCase;

  ContactUsBloc(this.sendInformationUserUseCase)
      : super(ContactUsState.init()) {
    on<SendInfoEvent>(sendInfo);
  }

  sendInfo(SendInfoEvent event, Emitter<ContactUsState> emit) async {
    emit(
      state.copyWith(
        sendInfoStatus: ApiStatus.loading,
      ),
    );
    final result = await sendInformationUserUseCase.call();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            sendInfoStatus: ApiStatus.error,
            sendInfoMessage: failure.toString(),
          ),
        );
      },
      (result) {
        emit(
          state.copyWith(
            sendInfoStatus: ApiStatus.success,
          ),
        );
      },
    );
  }
}
