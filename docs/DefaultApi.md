# OpenapiClient::DefaultApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_apps_app_id_or_name_config_vars_get**](DefaultApi.md#api_v1_apps_app_id_or_name_config_vars_get) | **GET** /api/v1/apps/{app_id_or_name}/config-vars | list all config-vars |
| [**api_v1_apps_app_id_or_name_config_vars_patch**](DefaultApi.md#api_v1_apps_app_id_or_name_config_vars_patch) | **PATCH** /api/v1/apps/{app_id_or_name}/config-vars | set or update config-vars |
| [**api_v1_apps_id_builds_post**](DefaultApi.md#api_v1_apps_id_builds_post) | **POST** /api/v1/apps/{id}/builds | create build |
| [**api_v1_apps_id_dynos_delete**](DefaultApi.md#api_v1_apps_id_dynos_delete) | **DELETE** /api/v1/apps/{id}/dynos | restart dynos |
| [**api_v1_me_get**](DefaultApi.md#api_v1_me_get) | **GET** /api/v1/me | identity |
| [**api_v1_namespaces_post**](DefaultApi.md#api_v1_namespaces_post) | **POST** /api/v1/namespaces | create a namespace |
| [**api_v1_oidc_login_get**](DefaultApi.md#api_v1_oidc_login_get) | **GET** /api/v1/oidc-login | kubernetes oidc-login |
| [**app**](DefaultApi.md#app) | **GET** /api/v1/apps/{id} | show app |
| [**apps**](DefaultApi.md#apps) | **GET** /api/v1/apps | list apps |
| [**namespace**](DefaultApi.md#namespace) | **GET** /api/v1/namespaces/{id} | show namespace |
| [**namespaces**](DefaultApi.md#namespaces) | **GET** /api/v1/namespaces | list all namespaces |
| [**team**](DefaultApi.md#team) | **GET** /api/v1/teams/{id} | show team |
| [**teams**](DefaultApi.md#teams) | **GET** /api/v1/teams | list all teams |


## api_v1_apps_app_id_or_name_config_vars_get

> api_v1_apps_app_id_or_name_config_vars_get(app_id_or_name)

list all config-vars

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # list all config-vars
  api_instance.api_v1_apps_app_id_or_name_config_vars_get(app_id_or_name)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_app_id_or_name_config_vars_get: #{e}"
end
```

#### Using the api_v1_apps_app_id_or_name_config_vars_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_apps_app_id_or_name_config_vars_get_with_http_info(app_id_or_name)

```ruby
begin
  # list all config-vars
  data, status_code, headers = api_instance.api_v1_apps_app_id_or_name_config_vars_get_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_app_id_or_name_config_vars_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_v1_apps_app_id_or_name_config_vars_patch

> api_v1_apps_app_id_or_name_config_vars_patch(app_id_or_name, opts)

set or update config-vars

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
opts = {
  request_body: { key: 'inner_example'} # Hash<String, String> | 
}

begin
  # set or update config-vars
  api_instance.api_v1_apps_app_id_or_name_config_vars_patch(app_id_or_name, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_app_id_or_name_config_vars_patch: #{e}"
end
```

#### Using the api_v1_apps_app_id_or_name_config_vars_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_apps_app_id_or_name_config_vars_patch_with_http_info(app_id_or_name, opts)

```ruby
begin
  # set or update config-vars
  data, status_code, headers = api_instance.api_v1_apps_app_id_or_name_config_vars_patch_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_app_id_or_name_config_vars_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **request_body** | [**Hash&lt;String, String&gt;**](String.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## api_v1_apps_id_builds_post

> api_v1_apps_id_builds_post(id)

create build

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
id = 'id_example' # String | app id or name

begin
  # create build
  api_instance.api_v1_apps_id_builds_post(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_id_builds_post: #{e}"
end
```

#### Using the api_v1_apps_id_builds_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_apps_id_builds_post_with_http_info(id)

```ruby
begin
  # create build
  data, status_code, headers = api_instance.api_v1_apps_id_builds_post_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_id_builds_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | app id or name |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_v1_apps_id_dynos_delete

> api_v1_apps_id_dynos_delete(id)

restart dynos

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
id = 'id_example' # String | app id or name

begin
  # restart dynos
  api_instance.api_v1_apps_id_dynos_delete(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_id_dynos_delete: #{e}"
end
```

#### Using the api_v1_apps_id_dynos_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_apps_id_dynos_delete_with_http_info(id)

```ruby
begin
  # restart dynos
  data, status_code, headers = api_instance.api_v1_apps_id_dynos_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_apps_id_dynos_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | app id or name |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_v1_me_get

> <ApiV1MeGet200Response> api_v1_me_get

identity

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  # identity
  result = api_instance.api_v1_me_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_me_get: #{e}"
end
```

#### Using the api_v1_me_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiV1MeGet200Response>, Integer, Hash)> api_v1_me_get_with_http_info

```ruby
begin
  # identity
  data, status_code, headers = api_instance.api_v1_me_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiV1MeGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_me_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiV1MeGet200Response**](ApiV1MeGet200Response.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_namespaces_post

> api_v1_namespaces_post(opts)

create a namespace

Create a namespace

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
opts = {
  api_v1_namespaces_post_request: OpenapiClient::ApiV1NamespacesPostRequest.new({name: 'name_example', team_id: 'team_id_example', region: 'region_example'}) # ApiV1NamespacesPostRequest | 
}

begin
  # create a namespace
  api_instance.api_v1_namespaces_post(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_namespaces_post: #{e}"
end
```

#### Using the api_v1_namespaces_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_namespaces_post_with_http_info(opts)

```ruby
begin
  # create a namespace
  data, status_code, headers = api_instance.api_v1_namespaces_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_namespaces_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_v1_namespaces_post_request** | [**ApiV1NamespacesPostRequest**](ApiV1NamespacesPostRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## api_v1_oidc_login_get

> <ApiV1OidcLoginGet200Response> api_v1_oidc_login_get(opts)

kubernetes oidc-login

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
opts = {
  region: 'us-test-1' # String | 
}

begin
  # kubernetes oidc-login
  result = api_instance.api_v1_oidc_login_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_oidc_login_get: #{e}"
end
```

#### Using the api_v1_oidc_login_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiV1OidcLoginGet200Response>, Integer, Hash)> api_v1_oidc_login_get_with_http_info(opts)

```ruby
begin
  # kubernetes oidc-login
  data, status_code, headers = api_instance.api_v1_oidc_login_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiV1OidcLoginGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_oidc_login_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** |  | [optional] |

### Return type

[**ApiV1OidcLoginGet200Response**](ApiV1OidcLoginGet200Response.md)

### Authorization

[api_key](../README.md#api_key), [bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app

> <App> app(id)

show app

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
id = 'id_example' # String | app id or name

begin
  # show app
  result = api_instance.app(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->app: #{e}"
end
```

#### Using the app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> app_with_http_info(id)

```ruby
begin
  # show app
  data, status_code, headers = api_instance.app_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | app id or name |  |

### Return type

[**App**](App.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## apps

> <Array<App>> apps(opts)

list apps

List all apps

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
opts = {
  team_id: 'team_id_example' # String | team id or name
}

begin
  # list apps
  result = api_instance.apps(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->apps: #{e}"
end
```

#### Using the apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<App>>, Integer, Hash)> apps_with_http_info(opts)

```ruby
begin
  # list apps
  data, status_code, headers = api_instance.apps_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<App>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | team id or name | [optional] |

### Return type

[**Array&lt;App&gt;**](App.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## namespace

> <Namespace> namespace(id)

show namespace

Show a namespace

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
id = 'id_example' # String | Namespace name or ID

begin
  # show namespace
  result = api_instance.namespace(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->namespace: #{e}"
end
```

#### Using the namespace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Namespace>, Integer, Hash)> namespace_with_http_info(id)

```ruby
begin
  # show namespace
  data, status_code, headers = api_instance.namespace_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Namespace>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->namespace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Namespace name or ID |  |

### Return type

[**Namespace**](Namespace.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## namespaces

> <Array<Namespace>> namespaces

list all namespaces

List all namespaces

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  # list all namespaces
  result = api_instance.namespaces
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->namespaces: #{e}"
end
```

#### Using the namespaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Namespace>>, Integer, Hash)> namespaces_with_http_info

```ruby
begin
  # list all namespaces
  data, status_code, headers = api_instance.namespaces_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Namespace>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->namespaces_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Namespace&gt;**](Namespace.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## team

> <Team> team(id)

show team

Show a team

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new
id = 'id_example' # String | Team name or ID

begin
  # show team
  result = api_instance.team(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->team: #{e}"
end
```

#### Using the team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> team_with_http_info(id)

```ruby
begin
  # show team
  data, status_code, headers = api_instance.team_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Team name or ID |  |

### Return type

[**Team**](Team.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## teams

> <Array<Team>> teams

list all teams

List all teams

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  # list all teams
  result = api_instance.teams
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->teams: #{e}"
end
```

#### Using the teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Team>>, Integer, Hash)> teams_with_http_info

```ruby
begin
  # list all teams
  data, status_code, headers = api_instance.teams_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Team>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->teams_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

