### Conceptual Exercise

Answer the following questions below:

- What are some ways of managing asynchronous code in JavaScript?
Answer: 

Javascript provides several approaches for handling asynchronous operations: 

__Callbacks__ - The traditional approach where you pass a function to be executed when an operation completes. While functional, they can lead to "callback hell" with nested operations.

__Promises__ - Objects representing eventual completion or failure of async operations. They provide **.then(), .catch(), and .finally()** methods for chaining operations cleanly.

__Async/Await__ - Syntactic sugar over Promises that allows writing asynchronous code that reads like synchronous code, making it more intuitive and easier to debug.

__Event Listeners__ - For handling user interactions and other events that occur at unpredictable times.
Observables (via libraries like RxJS) - For handling streams of asynchronous events over time.

==================================================

- What is a Promise?
Answer: 

A Promise is an object representing the eventual completion or failure of an asynchronous operation. It acts as a placeholder for a value that will be available in the future. Promises have three states:

* __Pending__   - Initial state, neither fulfilled nor rejected
* __Fulfilled__ - Operation completed successfully with a result value
* __Rejected__  - Operation failed with a reason/error

Promises allow you to attach callbacks using **.then()** for success cases and **.catch()** for error handling, enabling cleaner asynchronous code flow compared to nested callbacks.

==================================================

- What are the differences between an async function and a regular function?
Answer: 

__Return Values:__

* Regular functions return values directly
* Async functions always return a Promise (even if you return a primitive value, it gets wrapped in a resolved Promise)

__Execution:__

* Regular functions run synchronously from start to finish
* Async functions can be paused and resumed using await, allowing other code to execute while waiting for async operations

__Error Handling:__

* Regular functions use try/catch blocks normally
* Async functions can use try/catch with await, and any uncaught errors automatically reject the returned Promise

__Usage:__

* Regular functions are called normally: **result = myFunction()**
* Async functions should be awaited or handled as Promises: **result = await myAsyncFunction()**


==================================================

- What is the difference between Node.js and Express.js?
Answer: 

__Node.js__ is a JavaScript runtime environment that allows you to run JavaScript on the server side. It provides core functionality like file system access, HTTP server capabilities, and various built-in modules.

__Express.js__ is a web application framework built on top of Node.js. It's a library that provides additional features for building web applications and APIs, including:

* Simplified routing
* Middleware support
* Template engine integration
* Request/response helper methods

Think of Node.js as the foundation and Express.js as a framework that makes building web applications on that foundation much easier.

==================================================

- What is the error-first callback pattern?
Answer: 

This is a convention used in Node.js where callback functions receive an error as their first parameter:

```js
function myCallback(error, result) {
  if (error) {
    // Handle error
    console.error('Something went wrong:', error);
    return;
  }
  // Process result
  console.log('Success:', result);
}
```

The pattern ensures consistent error handling across the Node.js ecosystem. If there's no error, the first parameter is __null__ or __undefined.__ This makes error checking explicit and standardized.

==================================================

- What is middleware?
Answer: 

Middleware functions are functions that have access to the request object, response object, and the next middleware function in the application's request-response cycle. They can:

* Execute code
* Modify request and response objects
* End the request-response cycle
* Call the next middleware function

Middleware functions run sequentially and are commonly used for authentication, logging, parsing request bodies, handling CORS, and error handling.

==================================================

- What does the __next__ function do?
Answer: 

The __next__ function is a callback passed to middleware functions that, when invoked, passes control to the next middleware function in the stack. Key behaviors:

__next()__ - Continues to the next middleware
__next(error)__ - Skips remaining middleware and triggers error handling
Not calling __next()__ - Stops the request-response cycle (you must send a response)

It's essential for maintaining the flow of execution through the middleware stack.

==================================================

- What are some issues with the following code? (consider all aspects: performance, structure, naming, etc)

```js
async function getUsers() {
  const elie = await $.getJSON('https://api.github.com/users/elie');
  const joel = await $.getJSON('https://api.github.com/users/joelburton');
  const matt = await $.getJSON('https://api.github.com/users/mmmaaatttttt');

  return [elie, matt, joel];
}
```
__Performance Issues:__

__Sequential execution__ - The requests run one after another instead of concurrently, making it unnecessarily slow. All three requests could run in parallel.

__Better approach:__

```js
async function getUsers() {
  const [elie, joel, matt] = await Promise.all([
    $.getJSON('https://api.github.com/users/elie'),
    $.getJSON('https://api.github.com/users/joelburton'),
    $.getJSON('https://api.github.com/users/mmmaaatttttt')
  ]);

  return [elie, joel, matt];
}
```
__Structural Issues:__

* __Hard-coded usernames__ - Not flexible or reusable
* __No error handling__    - If any request fails, the entire function fails
* __jQuery dependency__    - Uses $ which assumes jQuery is loaded

__Naming Issues:__

* Variable names match GitHub usernames but this creates tight coupling
* Function name __getUsers__ is generic but implementation is very specific

__Additional Considerations:__

* __Return order inconsistency__ - Variables are declared elie, joel, matt but returned as elie, matt, joel
* __No input validation or configuration options__
* __Missing TypeScript types or JSDoc comments for better developer experience__



