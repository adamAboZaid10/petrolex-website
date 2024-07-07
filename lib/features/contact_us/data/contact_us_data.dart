import 'package:flutter/cupertino.dart';

class ContactUsData {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static GlobalKey<FormState> footerFormKey = GlobalKey<FormState>();

  static TextEditingController nameController = TextEditingController();
  static FocusNode nameFocusNode = FocusNode();
  static TextEditingController emailController = TextEditingController();
  static FocusNode emailFocusNode = FocusNode();
  static TextEditingController messageController = TextEditingController();
  static FocusNode messageFocusNode = FocusNode();
  static TextEditingController numberController = TextEditingController();
  static FocusNode numberFocusNode = FocusNode();
}
