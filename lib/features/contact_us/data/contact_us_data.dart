import 'package:flutter/cupertino.dart';

class ContactUsData {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static GlobalKey<FormState> footerFormKey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController messageController = TextEditingController();
  static TextEditingController numberController = TextEditingController();
}
