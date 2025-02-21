# Unhandled Exception During JSON Decoding in Dart Async Code

This repository demonstrates a common error in Dart asynchronous programming: neglecting to handle exceptions that may occur during JSON decoding.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

The issue arises when network requests return data that cannot be parsed as JSON.  Without proper error handling, the application might crash or exhibit unexpected behavior.

This example highlights the importance of robust error handling in asynchronous operations to ensure application stability and prevent unexpected failures.