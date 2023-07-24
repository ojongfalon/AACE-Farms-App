import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Cart = prefs
              .getStringList('ff_Cart')
              ?.map((x) {
                try {
                  return CartItemsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Cart;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CartItemsStruct> _Cart = [];
  List<CartItemsStruct> get Cart => _Cart;
  set Cart(List<CartItemsStruct> _value) {
    _Cart = _value;
    prefs.setStringList('ff_Cart', _value.map((x) => x.serialize()).toList());
  }

  void addToCart(CartItemsStruct _value) {
    _Cart.add(_value);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.serialize()).toList());
  }

  void removeFromCart(CartItemsStruct _value) {
    _Cart.remove(_value);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCart(int _index) {
    _Cart.removeAt(_index);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.serialize()).toList());
  }

  void updateCartAtIndex(
    int _index,
    CartItemsStruct Function(CartItemsStruct) updateFn,
  ) {
    _Cart[_index] = updateFn(_Cart[_index]);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
