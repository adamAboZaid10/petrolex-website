part of 'contact_us_bloc.dart';

sealed class ContactUsEvent extends Equatable {
  const ContactUsEvent();
}


class SendInfoEvent extends ContactUsEvent {
  const SendInfoEvent();
  @override
  List<Object> get props => [];
}