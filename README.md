# Inconsistent Behavior of Null-Aware Operator (??=) with Nullable Instance Variables

This repository demonstrates an unexpected behavior of the null-aware assignment operator (`??=`) in Dart when used with nullable instance variables within a class method.  The issue is that assigning a default value using `??=` doesn't persist consistently across different instances of the class.

The `bug.dart` file contains the code exhibiting the problem. The `bugSolution.dart` file offers a solution.  The problem is detailed in the issue description.

## Problem Description
When a method uses `??=` to assign a default value to a nullable instance variable, the default value is not consistently preserved between different instances of the class. This can lead to unexpected behavior in multi-threaded environments or with multiple object creations.

## Solution
The solution involves initializing the nullable variable in the constructor to avoid the inconsistent behavior of `??=`.