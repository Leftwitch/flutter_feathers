![Image of Feathers](https://feathersjs.com/img/feathers-logo-wide.png)


# flutter_feathers_core

This library aims to bring most of the Feathers.js client functionality to flutter while also keeping its modularity.
This Project is bascially just a Blueprint for so called `FeatherProviders`.

## Getting Started

You can either:

- Implement an `FeathersProvider`
- Use on of the following already created by the community or the FlutterFeathers team:
    - [Rest-Provider for FlutterFeathers](https://github.com/Leftwitch/flutter_feathers_rest)
    - [Socket.IO - Provider for FlutterFeathers](https://github.com/Leftwitch/flutter_feathers_socket_io)
    
    
## Example with Rest-Provider
```dart
Feathers feathers = Feathers();
feathers.configure(FeathersRestProvider('http://localhost:3030')); //Tells Feathers to use the FeathersRestProvider which takes an URL as parameter
await user = feathers.service('users').get('eb412caa-34cd-470e-ba15-15225715e18e'); //Calls http://localhost:3030/users/eb412caa-34cd-470e-ba15-15225715e18e
print(user);
  
  ```