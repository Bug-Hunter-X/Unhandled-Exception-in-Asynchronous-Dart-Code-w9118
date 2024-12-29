# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart:  failing to properly handle exceptions within asynchronous operations.  The provided code snippet shows a typical `try-catch` block for handling network requests, and the importance of `rethrow` for proper exception propagation.

## The Problem

In asynchronous programming, exceptions might not be handled immediately where they occur.  If an exception is caught in a lower level of the call stack but not rethrown, higher levels might not know an error occurred.

## The Solution

The `rethrow` keyword ensures the exception is passed up the call stack until a suitable handler is found.  This enables more robust error management in complex asynchronous workflows.

## Running the Code

1.  Clone this repository
2.  Run the Dart code using a Dart VM or your preferred Dart IDE.
3.  Observe the error handling behavior.