library copy_with_utils;

typedef ValueCallback<T> = T Function();

T switcher<T>(ValueCallback<T>? valueCallback, T defaultValue) {
  return valueCallback == null ? defaultValue : valueCallback();
}
