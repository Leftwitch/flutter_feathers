![Image of Feathers](https://feathersjs.com/img/feathers-logo-wide.png)


# flutter_feathers

This library aims to bring most of the Feathers.js client functionality to flutter while also keeping its modularity.
This Project is bascially just a Blueprint for so called `FeatherProviders`.

## Getting Started

You can either:

- Implement an `FeathersProvider`
- Use on of the following already created by the community or the FlutterFeathers team:
    - [Rest-Provider for FlutterFeathers](https://github.com/Leftwitch/flutter_feathers_rest)
    - [Socket.IO - Provider for FlutterFeathers](https://github.com/Leftwitch/flutter_feathers_socket_io)
    
    


## Authentication
In order for Authentication to work you need to call the `configureAuthentication` method on the Feathers instance.

#### Example:
```dart
app.configureAuthentication(
    (stored) => print('STORE: $stored'),
    () => 'MY STORED ACCESS TOKEN');
```

The first Function is callend when the authentication should be stored locally, the second Function is called to retrieve the stored authentication data.

This allows you to implement your own Read/Write logic for sessions.

We recommend using the [shared_preferences](https://pub.dev/packages/shared_preferences) package.

#### Example with shared_preferences:
```dart
var prefs = await SharedPreferences.getInstance();

app.configureAuthentication(
    (stored) => prefs.setString('auth', stored),
    () => prefs.getString('auth'),
);
```


By Default the authentication-methods invokes the '/authentication' route however you can change the path by providing the `authServiceName` parameter.

#### Example

```dart
var prefs = await SharedPreferences.getInstance();

app.configureAuthentication(
    (stored) => prefs.setString('auth', stored),
    () => prefs.getString('auth'),
    authServiceName: 'login' //Uses /login insteadof /authentication
);
```


### Authentication (Authenticate)

To re-authenticate the user using the provided storage methods try to invoke `reAuthenticate` on the feathers instance.

This tries to re-log the user using the old JWT if it is still available.

#### Example
```dart
try{
  await app.reAuthenticate();
  //SUCCESS
} catch(err){
  //FAILED
}
```

To authenticate a user invoke the `authenticate` method on the feathers instance.

#### Example

```dart
try{
   await app.authenticate({
    "email": "EMAIL@EMAIL.com",
    "password": "PASSWORD",
    "strategy": "local"
  });
  //SUCCESS
} catch(err){
  //FAILED
}
```

To logout the user just call `logout` on the feathers instance.

#### Example

```dart
app.logout(); //Log the user out by storing null as token
```