```dart
class MyClass {
  int? _myVariable;

  void myMethod() {
    print(_myVariable ??= 0); // Assign default value if null
    _myVariable = 10; 
  }
}

void main() {
  MyClass obj = MyClass();
  obj.myMethod(); //Prints 0
  obj.myMethod(); //Prints 10 (expected)
  MyClass obj2 = MyClass();
  obj2.myMethod();//Prints 0 (unexpected)
}
```