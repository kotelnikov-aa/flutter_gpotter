import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';
part 'login_mobx_controller.g.dart';

class EmailCheck = _EmailCheck with _$EmailCheck;

abstract class _EmailCheck with Store {
  final error = EmailErrorState();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  ObservableFuture<bool> emailCheck = ObservableFuture.value(true);

  late List<ReactionDisposer> _disposers;

  void setupValidators() {
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
    ];
  }

  @action
  Future validateEmail(String value) async {
    if (isNull(value) || value.isEmpty) {
      error.email = 'please, enter email correct';
      return;
    }
    try {
      emailCheck = ObservableFuture(checkValidEmail(value));
      error.email = null;
      final isValid = await emailCheck;
      if (!isValid) {
        error.email = 'please enter a correct email';
        return;
      }
    } on Object catch (_) {
      error.email = null;
    }

    error.email = null;
  }

  @action
  Future validatePassword(String value) async {
    if (isNull(value) || value.isEmpty || value.length < 5) {
      error.password = 'please, enter password';
      return;
    }
    error.password = null;
  }

  Future<bool> checkValidEmail(String value) async {
    await Future.delayed(const Duration(seconds: 2));
    return isEmail(value) ? true : false;
  }

  Future validateAll() async {
    // await Future.delayed(const Duration(seconds: 1));
    // validateEmail(email);
    // validatePassword(password);
    checkEmailInUsed(email);
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}

Future<bool> checkEmailInUsed(String emailAddress) async {
  try {
    final list =
        await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);
    if (list.isNotEmpty) {
      print('user using the email address');
      return true;
    } else {
      print('user not registered');
      return false;
    }
  } catch (error) {
    // Handle error
    // ...
    return true;
  }
}

class EmailErrorState = _EmailErrorState with _$EmailErrorState;

abstract class _EmailErrorState with Store {
  @observable
  String? email = '';
  @observable
  String? password = '';

  @computed
  bool get hasErrors => email != null || password != null;
}
