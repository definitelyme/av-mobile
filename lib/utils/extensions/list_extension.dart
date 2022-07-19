import 'package:kt_dart/collection.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';

extension ListX<T> on Iterable<T> {
  String foldWithSeparator([String initialValue = '', String separator = ',']) {
    // Assert T is of type String
    assert(T is String);
    return fold(initialValue, (prev, next) {
      if (last != next) return '$prev$next$separator';
      return '$prev$next';
    });
  }

  T? get firstOrNone {
    try {
      return first;
    } catch (e) {
      return null;
    }
  }

  T get firstOrEmpty {
    try {
      return first;
    } catch (e) {
      return '' as T;
    }
  }

  T? firstOrNull([bool Function(T)? predicate]) {
    if (predicate == null) {
      if (this is List) {
        final list = this as List<T>;
        if (list.isEmpty) {
          return null;
        } else {
          return list[0];
        }
      }
      final i = iterator;
      if (!i.moveNext()) {
        return null;
      }
      return i.current;
    } else {
      for (final element in this) {
        if (predicate(element)) return element;
      }
      return null;
    }
  }

  T? lastOrNull([bool Function(T)? predicate]) {
    if (predicate == null) {
      if (this is List) {
        final list = this as List<T>;
        if (list.isEmpty) {
          return null;
        } else {
          return list[list.length - 1];
        }
      }
      final i = iterator;
      if (!i.moveNext()) {
        return null;
      }
      T? last = i.current;
      while (i.moveNext()) {
        last = i.current;
      }
      return last;
    } else {
      for (final element in this) {
        if (predicate(element)) return element;
      }
      return null;
    }
  }

  List<T> plus(List<T> other) {
    final _list = toList()..addAll(other);
    return _list;
  }

  List<T> minus(List<T> other) {
    return where((e) => !other.contains(e)).toList();
  }

  List<T> plusElement(T element) {
    final _list = toList()..add(element);
    return _list;
  }

  List<T> onEach(void Function(T item) action) {
    for (final element in this) action(element);

    return toList();
  }

  T? elementAtOrNull(int? index) {
    if (index == null || index < 0 || isEmpty || index >= length) return null;

    return elementAt(index);
  }
}

enum KtPlus { start, end }

extension KtX2<T> on KtIterable<T> {
  KtList<T> plusAndMapIfAbsent<K>(
    KtList<T> other, {
    required bool Function(T, T) none,
    required K Function(T) distinctBy,
    bool Function(T, T)? replaceIfExists,
    KtPlus position = KtPlus.end,
  }) {
    final KtList<T> currentList;

    if (toList().isNotEmpty() && replaceIfExists != null)
      currentList = _replaceAll(other, predicate: replaceIfExists);
    else
      currentList = toList();

    final _filtered = other.filter((it) => currentList.none((it2) => none(it, it2))).distinctBy(distinctBy);

    return position.when(
      start: () => KtList.from([..._filtered.asList(), ...currentList.asList()]),
      end: () => currentList.plus(_filtered),
    );
  }

  KtList<T> plusElementAndMapIfAbsent(
    T element, {
    required bool Function(T, T) equals,
    KtPlus position = KtPlus.end,
  }) {
    if (any((i) => equals(element, i))) return toList();
    return position.when(
      // start: () => KtList.from([other, ...minusElementIfPresent(other).asList()]),
      start: () => KtList.from([element, ...mapAndMinusElementIfPresent(element, equals: equals).iter]),
      end: () => plusElement(element),
    );
  }

  KtList<T> mapAndMinusElementIfPresent(T other, {required bool Function(T, T) equals}) {
    // if (none((it) => other.id != it.id)) return toList();
    final _new = toList().iter.toList()..removeWhere((el) => equals(el, other));
    return _new.toImmutableList();
  }

  KtList<T> mapAndMinusIfPresent<K>(KtList<T> other, {required bool Function(T, T) equals}) {
    final list = toMutableList().asList();
    list.removeWhere((el) => other.any((it) => equals(el, it)));
    return list.toImmutableList();
  }

  KtList<T> _replaceAll(KtList<T> newValues, {required bool Function(T prev, T current) predicate}) {
    return map((e) {
      final newValue = newValues.find((it) => predicate(e, it));
      return newValue ?? e;
    });
  }
}

extension IterableX<T extends BaseEntity> on Iterable<T> {
  /// Returns `true` if the collection has no elements or no elements match the given [predicate].
  bool _none(bool Function(T) predicate) {
    if (isEmpty) return true;

    for (final element in this) {
      if (predicate(element)) {
        return false;
      }
    }
    return true;
  }

  List<T> replaceAll(List<T> newValues, {required bool Function(T prev, T current) predicate}) {
    return map((e) {
      T? newValue;

      try {
        newValue = newValues.firstWhere((it) => predicate(e, it));
      } catch (_) {}

      return newValue ?? e;
    }).toList();
  }

  List<T> plusIfAbsent(List<T> other, [KtPlus position = KtPlus.end]) {
    final otherFiltered = other.where((it) => _none((it2) => it.id == it2.id)).toList().unique((p0) => p0.id);
    return position.when(
      start: () => [...otherFiltered, ...toList()],
      end: () => toList()..addAll(otherFiltered),
    );
  }

  List<T> minusIfPresent(List<T> other) => toList()..removeWhere((el) => other.any((it) => it.id == el.id));

  List<T> plusElementIfAbsent(T other, [KtPlus position = KtPlus.end]) {
    if (any((it) => other.id == it.id)) return toList();
    return position.when(
      start: () => [other, ...toList()],
      end: () => toList()..add(other),
    );
  }

  List<T> replaceElementIfPresent(T other) {
    if (_none((it) => other.id == it.id)) return toList();
    return map((e) => e.id == other.id ? other : e).toList();
  }

  List<T> minusElementIfPresent(T other) {
    if (_none((it) => other.id != it.id)) return toList();
    return toList()..removeWhere((el) => other.id == el.id);
  }
}

extension KtX<T extends BaseEntity> on KtIterable<T> {
  KtList<T> plusIfAbsent(KtList<T> incoming, [KtPlus position = KtPlus.end]) {
    final KtList<T> currentList;

    if (toList().isNotEmpty())
      currentList = replaceAll(incoming, predicate: (p0, p1) => p0.id == p1.id);
    else
      currentList = toList();

    /// Filter and return elements whose ID already exists in the [incoming] list
    /// With this, we're sure the items in [_filtered] are only new items whose ID do not exist in the current list
    final _filtered = incoming.filter((it) => currentList.none((it2) => it.id == it2.id)).distinctBy((p0) => p0.id);

    return position.when(
      start: () => KtList.from([..._filtered.asList(), ...currentList.asList()]),
      end: () => currentList.plus(_filtered),
    );
  }

  // A Function to replace element in a list if exist element with same id
  KtList<T> replace(T newValue, {required bool Function(T) predicate}) {
    final filtered = filter(predicate).toList();

    for (final e in filtered.iter) {
      final index = indexOf(e);
      toList().asList().removeAt(index);
      toList().asList().insert(index, newValue);
    }

    return toList();
  }

  KtList<T> replaceAll(KtList<T> newValues, {required bool Function(T prev, T current) predicate}) {
    return map((e) {
      final newValue = newValues.find((it) => predicate(e, it));
      return newValue ?? e;
    });
  }

  KtList<T> minusIfPresent(KtList<T> other) => minus(other);

  // KtList<T> minusByIdIfPresent(KtList<T> other) => other.onEach((e) => minusElementIfPresent(e));
  KtList<T> minusByIdIfPresent(KtList<T> other) => iter.minusIfPresent(other.iter.toList()).toImmutableList();

  KtList<T> plusElementIfAbsent(T other, [KtPlus position = KtPlus.end]) {
    if (any((it) => other.id == it.id)) return toList();
    return position.when(
      // start: () => KtList.from([other, ...minusElementIfPresent(other).asList()]),
      start: () => KtList.from([other, ...iter.minusElementIfPresent(other).toList()]),
      end: () => plusElement(other),
    );
  }

  KtList<T> plusOrReplace(T other, [KtPlus position = KtPlus.end]) {
    if (none((it) => other.id == it.id)) return plusElementIfAbsent(other, position);
    return map((e) => e.id == other.id ? other : e);
  }

  KtList<T> minusElementIfPresent(T other) {
    // if (none((it) => other.id != it.id)) return toList();
    final _new = toList().iter.toList()..removeWhere((el) => other.id == el.id);
    return _new.toImmutableList();
  }
}

extension on KtPlus {
  T when<T>({
    required T Function() start,
    required T Function() end,
  }) {
    switch (this) {
      case KtPlus.start:
        return start.call();
      case KtPlus.end:
        return end.call();
    }
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <Id>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id?.call(x) ?? x as Id));
    return list;
  }
}
