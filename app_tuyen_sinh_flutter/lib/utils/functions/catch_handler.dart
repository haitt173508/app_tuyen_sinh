import 'dart:developer';

T? catchHandler<T>(Object e, StackTrace s, [T? returnValue]) {
  log('CatchHandler', error: e, stackTrace: s);
  return returnValue;
}
