# Kong Registrator
An image with base script for register, update, delete API in Kong using the administrative API.

## Command available
### API
#### register-apis
Register a list of API to kong
The script is alway successful (return code 0)

Environment var:
- `KONG_SERVER`

Command parameter:
```
register-apis api-definition[, api2-definition[, ...]]

    api-definition: service-name;request-path;service-url[;preserve-host;strip-request-path]
```

#### register-api
Register an API to kong

Environment var:
- `KONG_SERVER`

Command parameters:
```
register-api service-name request-path service-url [preserve-host[ strip-request-path]]

    service-name        exemple: customers
    request-path        exemple: /customers/
    service-url         exemple: http://customers:8080
    preserve-host,      default: false
    strip-request-path, default: false
```

#### update-api
Update an API to kong

Environment var:
- `KONG_SERVER`

Command parameters:
```
update-api service-name request-path service-url [preserve-host[ strip-request-path]]

    service-name        exemple: customers
    request-path        exemple: /customers/
    service-url         exemple: http://customers:8080
    preserve-host,      default: false
    strip-request-path, default: false
```

### Plugins
#### enable-plugins
Enable a list of Plugin to kong.
The script is alway successful (return code 0)

Environment var:
- `KONG_SERVER`

Command parameter:
```
enable-plugins plugin-definition[, plugin-definition[, ...]]

    plugin-definition: plugin-name;plugin-configuration[;api-name]
```

#### enable-plugin
Enable a plugin to kong

Environment var:
- `KONG_SERVER`

Command parameters:
```
enable-plugin plugin-name plugin-configuration [api-name]

    plugin-name             exemple: ip-restriction
    plugin-configuration    exemple: config.whitelist='127.0.0.1,10.0.0.0/8'
    api-name                exemple: internal-api
```