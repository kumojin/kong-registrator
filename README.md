# Kong Registrator
An image with base script for register, update, delete API in Kong using the administrative API.

## Command available
### register-apis
Register a list of API to kong

Environment var:
- `KONG_SERVER`

Command parameter:
```
register-apis api-definition[, api2-definition[, ...]]

    api-definition: service-name;request-path;service-url[;preserve-host;strip-request-path]
```

### register-api
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

### update-api
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
