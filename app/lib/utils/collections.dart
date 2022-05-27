List<T> listDecode<T>(dynamic list) {
  return list?.map<T>((e) => e as T).toList() ?? [];
}
