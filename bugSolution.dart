```dart
class MyClass {
  int? _myVariable; // Initialize in constructor instead of assigning default within myMethod

  MyClass({this._myVariable = 0}); //Added Constructor

  void myMethod() {
    print(_myVariable!); // No longer need to use ??=
    _myVariable = 10;
  }
}

void main() {
  MyClass obj = MyClass();
  obj.myMethod(); //Prints 0
  obj.myMethod(); //Prints 10
  MyClass obj2 = MyClass();
  obj2.myMethod(); //Prints 0
}
```