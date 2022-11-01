// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mobx_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EmailCheck on _EmailCheck, Store {
  late final _$emailAtom = Atom(name: '_EmailCheck.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_EmailCheck.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$emailCheckAtom =
      Atom(name: '_EmailCheck.emailCheck', context: context);

  @override
  ObservableFuture<bool> get emailCheck {
    _$emailCheckAtom.reportRead();
    return super.emailCheck;
  }

  @override
  set emailCheck(ObservableFuture<bool> value) {
    _$emailCheckAtom.reportWrite(value, super.emailCheck, () {
      super.emailCheck = value;
    });
  }

  late final _$validateEmailAsyncAction =
      AsyncAction('_EmailCheck.validateEmail', context: context);

  @override
  Future<dynamic> validateEmail(String value) {
    return _$validateEmailAsyncAction.run(() => super.validateEmail(value));
  }

  late final _$validatePasswordAsyncAction =
      AsyncAction('_EmailCheck.validatePassword', context: context);

  @override
  Future<dynamic> validatePassword(String value) {
    return _$validatePasswordAsyncAction
        .run(() => super.validatePassword(value));
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
emailCheck: ${emailCheck}
    ''';
  }
}

mixin _$EmailErrorState on _EmailErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_EmailErrorState.hasErrors'))
          .value;

  late final _$emailAtom =
      Atom(name: '_EmailErrorState.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_EmailErrorState.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
hasErrors: ${hasErrors}
    ''';
  }
}
