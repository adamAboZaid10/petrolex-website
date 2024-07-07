part of 'contact_us_bloc.dart';

class ContactUsState extends Equatable {
  final ApiStatus sendInfoStatus;
  final String sendInfoMessage;

  const ContactUsState({
    required this.sendInfoStatus,
    required this.sendInfoMessage,
  });

  factory ContactUsState.init() {
    return const ContactUsState(
      sendInfoStatus: ApiStatus.none,
      sendInfoMessage: '',
    );
  }

  ContactUsState copyWith({
    ApiStatus? sendInfoStatus,
    String? sendInfoMessage,
  }) {
    return ContactUsState(
      sendInfoStatus: sendInfoStatus ?? this.sendInfoStatus,
      sendInfoMessage: sendInfoMessage ?? this.sendInfoMessage,
    );
  }

  @override
  List<Object> get props => [
        sendInfoStatus,
        sendInfoMessage,
      ];
}
