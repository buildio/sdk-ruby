# BuildClient::DefaultApi

All URIs are relative to *https://devhost.antimony.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_environments_id_get**](DefaultApi.md#api_v1_environments_id_get) | **GET** /api/v1/environments/{id} | get environment config-vars (e.g. pipeline RA env) |
| [**api_v1_environments_id_key_delete**](DefaultApi.md#api_v1_environments_id_key_delete) | **DELETE** /api/v1/environments/{id}/{key} | delete environment config-var |
| [**api_v1_environments_id_patch**](DefaultApi.md#api_v1_environments_id_patch) | **PATCH** /api/v1/environments/{id} | set or update environment config-vars (e.g. pipeline RA env) |
| [**app**](DefaultApi.md#app) | **GET** /api/v1/apps/{app_id_or_name} | show app |
| [**apps**](DefaultApi.md#apps) | **GET** /api/v1/apps | list apps |
| [**config_vars**](DefaultApi.md#config_vars) | **GET** /api/v1/apps/{app_id_or_name}/config-vars | list all config-vars |
| [**create_app**](DefaultApi.md#create_app) | **POST** /api/v1/apps | create app |
| [**create_build**](DefaultApi.md#create_build) | **POST** /api/v1/apps/{app_id_or_name}/builds | create build |
| [**create_namespace**](DefaultApi.md#create_namespace) | **POST** /api/v1/namespaces | create a namespace |
| [**delete_config_var**](DefaultApi.md#delete_config_var) | **DELETE** /api/v1/apps/{app_id_or_name}/config-vars/{key} | delete config-var |
| [**delete_namespace**](DefaultApi.md#delete_namespace) | **DELETE** /api/v1/namespaces/{namespace_id_or_name} | delete a namespace |
| [**exec_dyno**](DefaultApi.md#exec_dyno) | **POST** /api/v1/apps/{app_id_or_name}/dynos/{dyno}/exec | exec into dyno |
| [**list_dynos**](DefaultApi.md#list_dynos) | **GET** /api/v1/apps/{app_id_or_name}/dynos/list | list dynos |
| [**me**](DefaultApi.md#me) | **GET** /api/v1/me | identity |
| [**namespace**](DefaultApi.md#namespace) | **GET** /api/v1/namespaces/{namespace_id_or_name} | show namespace |
| [**namespaces**](DefaultApi.md#namespaces) | **GET** /api/v1/namespaces | list all namespaces |
| [**oidc_login**](DefaultApi.md#oidc_login) | **GET** /api/v1/oidc-login | kubernetes oidc-login |
| [**restart_all_dynos**](DefaultApi.md#restart_all_dynos) | **DELETE** /api/v1/apps/{app_id_or_name}/dynos | restart all dynos |
| [**restart_dynos**](DefaultApi.md#restart_dynos) | **DELETE** /api/v1/apps/{app_id_or_name}/dynos/{dyno} | restart specific dyno |
| [**set_config_vars**](DefaultApi.md#set_config_vars) | **PATCH** /api/v1/apps/{app_id_or_name}/config-vars | set or update config-vars |
| [**team**](DefaultApi.md#team) | **GET** /api/v1/teams/{id} | show team |
| [**teams**](DefaultApi.md#teams) | **GET** /api/v1/teams | list all teams |


## api_v1_environments_id_get

> Hash&lt;String, String&gt; api_v1_environments_id_get(id)

get environment config-vars (e.g. pipeline RA env)

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
id = 'id_example' # String | Environment ID

begin
  # get environment config-vars (e.g. pipeline RA env)
  result = api_instance.api_v1_environments_id_get(id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_get: #{e}"
end
```

#### Using the api_v1_environments_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> api_v1_environments_id_get_with_http_info(id)

```ruby
begin
  # get environment config-vars (e.g. pipeline RA env)
  data, status_code, headers = api_instance.api_v1_environments_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Environment ID |  |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_environments_id_key_delete

> api_v1_environments_id_key_delete(id, key)

delete environment config-var

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
id = 'id_example' # String | Environment ID
key = 'key_example' # String | config var key

begin
  # delete environment config-var
  api_instance.api_v1_environments_id_key_delete(id, key)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_key_delete: #{e}"
end
```

#### Using the api_v1_environments_id_key_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_environments_id_key_delete_with_http_info(id, key)

```ruby
begin
  # delete environment config-var
  data, status_code, headers = api_instance.api_v1_environments_id_key_delete_with_http_info(id, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_key_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Environment ID |  |
| **key** | **String** | config var key |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## api_v1_environments_id_patch

> api_v1_environments_id_patch(id, opts)

set or update environment config-vars (e.g. pipeline RA env)

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
id = 'id_example' # String | Environment ID
opts = {
  request_body: { key: 'inner_example'} # Hash<String, String> | 
}

begin
  # set or update environment config-vars (e.g. pipeline RA env)
  api_instance.api_v1_environments_id_patch(id, opts)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_patch: #{e}"
end
```

#### Using the api_v1_environments_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> api_v1_environments_id_patch_with_http_info(id, opts)

```ruby
begin
  # set or update environment config-vars (e.g. pipeline RA env)
  data, status_code, headers = api_instance.api_v1_environments_id_patch_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->api_v1_environments_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Environment ID |  |
| **request_body** | [**Hash&lt;String, String&gt;**](String.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## app

> <App> app(app_id_or_name)

show app

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # show app
  result = api_instance.app(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->app: #{e}"
end
```

#### Using the app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> app_with_http_info(app_id_or_name)

```ruby
begin
  # show app
  data, status_code, headers = api_instance.app_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

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
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
opts = {
  team_id: 'team_id_example' # String | team id or name
}

begin
  # list apps
  result = api_instance.apps(opts)
  p result
rescue BuildClient::ApiError => e
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
rescue BuildClient::ApiError => e
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


## config_vars

> Hash&lt;String, String&gt; config_vars(app_id_or_name)

list all config-vars

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # list all config-vars
  result = api_instance.config_vars(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->config_vars: #{e}"
end
```

#### Using the config_vars_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> config_vars_with_http_info(app_id_or_name)

```ruby
begin
  # list all config-vars
  data, status_code, headers = api_instance.config_vars_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->config_vars_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_app

> <App> create_app(opts)

create app

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
opts = {
  create_app_request: BuildClient::CreateAppRequest.new({name: 'name_example'}) # CreateAppRequest | 
}

begin
  # create app
  result = api_instance.create_app(opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_app: #{e}"
end
```

#### Using the create_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> create_app_with_http_info(opts)

```ruby
begin
  # create app
  data, status_code, headers = api_instance.create_app_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_app_request** | [**CreateAppRequest**](CreateAppRequest.md) |  | [optional] |

### Return type

[**App**](App.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_build

> create_build(app_id_or_name, opts)

create build

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
opts = {
  create_build_request: BuildClient::CreateBuildRequest.new # CreateBuildRequest | 
}

begin
  # create build
  api_instance.create_build(app_id_or_name, opts)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_build: #{e}"
end
```

#### Using the create_build_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_build_with_http_info(app_id_or_name, opts)

```ruby
begin
  # create build
  data, status_code, headers = api_instance.create_build_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **create_build_request** | [**CreateBuildRequest**](CreateBuildRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_namespace

> <Namespace> create_namespace(opts)

create a namespace

Create a namespace

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
opts = {
  create_namespace_request: BuildClient::CreateNamespaceRequest.new({name: 'name_example'}) # CreateNamespaceRequest | 
}

begin
  # create a namespace
  result = api_instance.create_namespace(opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_namespace: #{e}"
end
```

#### Using the create_namespace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Namespace>, Integer, Hash)> create_namespace_with_http_info(opts)

```ruby
begin
  # create a namespace
  data, status_code, headers = api_instance.create_namespace_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Namespace>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->create_namespace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_namespace_request** | [**CreateNamespaceRequest**](CreateNamespaceRequest.md) |  | [optional] |

### Return type

[**Namespace**](Namespace.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_config_var

> delete_config_var(app_id_or_name, key)

delete config-var

Delete a config-var

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
key = 'key_example' # String | config var key

begin
  # delete config-var
  api_instance.delete_config_var(app_id_or_name, key)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->delete_config_var: #{e}"
end
```

#### Using the delete_config_var_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_config_var_with_http_info(app_id_or_name, key)

```ruby
begin
  # delete config-var
  data, status_code, headers = api_instance.delete_config_var_with_http_info(app_id_or_name, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->delete_config_var_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **key** | **String** | config var key |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_namespace

> delete_namespace(namespace_id_or_name)

delete a namespace

Delete a namespace

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
namespace_id_or_name = 'namespace_id_or_name_example' # String | Namespace name or ID

begin
  # delete a namespace
  api_instance.delete_namespace(namespace_id_or_name)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->delete_namespace: #{e}"
end
```

#### Using the delete_namespace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_namespace_with_http_info(namespace_id_or_name)

```ruby
begin
  # delete a namespace
  data, status_code, headers = api_instance.delete_namespace_with_http_info(namespace_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->delete_namespace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace_id_or_name** | **String** | Namespace name or ID |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## exec_dyno

> <DynoExecResponse> exec_dyno(app_id_or_name, dyno, dyno_exec_request)

exec into dyno

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
dyno = 'dyno_example' # String | dyno name
dyno_exec_request = BuildClient::DynoExecRequest.new({command: ['command_example']}) # DynoExecRequest | 

begin
  # exec into dyno
  result = api_instance.exec_dyno(app_id_or_name, dyno, dyno_exec_request)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->exec_dyno: #{e}"
end
```

#### Using the exec_dyno_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DynoExecResponse>, Integer, Hash)> exec_dyno_with_http_info(app_id_or_name, dyno, dyno_exec_request)

```ruby
begin
  # exec into dyno
  data, status_code, headers = api_instance.exec_dyno_with_http_info(app_id_or_name, dyno, dyno_exec_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DynoExecResponse>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->exec_dyno_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **dyno** | **String** | dyno name |  |
| **dyno_exec_request** | [**DynoExecRequest**](DynoExecRequest.md) |  |  |

### Return type

[**DynoExecResponse**](DynoExecResponse.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_dynos

> <Array<Dyno>> list_dynos(app_id_or_name)

list dynos

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # list dynos
  result = api_instance.list_dynos(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->list_dynos: #{e}"
end
```

#### Using the list_dynos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Dyno>>, Integer, Hash)> list_dynos_with_http_info(app_id_or_name)

```ruby
begin
  # list dynos
  data, status_code, headers = api_instance.list_dynos_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Dyno>>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->list_dynos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

### Return type

[**Array&lt;Dyno&gt;**](Dyno.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## me

> <MeResponse> me

identity

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new

begin
  # identity
  result = api_instance.me
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->me: #{e}"
end
```

#### Using the me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeResponse>, Integer, Hash)> me_with_http_info

```ruby
begin
  # identity
  data, status_code, headers = api_instance.me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeResponse>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MeResponse**](MeResponse.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## namespace

> <Namespace> namespace(namespace_id_or_name)

show namespace

Show a namespace

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
namespace_id_or_name = 'namespace_id_or_name_example' # String | Namespace name or ID

begin
  # show namespace
  result = api_instance.namespace(namespace_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->namespace: #{e}"
end
```

#### Using the namespace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Namespace>, Integer, Hash)> namespace_with_http_info(namespace_id_or_name)

```ruby
begin
  # show namespace
  data, status_code, headers = api_instance.namespace_with_http_info(namespace_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Namespace>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->namespace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace_id_or_name** | **String** | Namespace name or ID |  |

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
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new

begin
  # list all namespaces
  result = api_instance.namespaces
  p result
rescue BuildClient::ApiError => e
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
rescue BuildClient::ApiError => e
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


## oidc_login

> <OidcLoginResponse> oidc_login(opts)

kubernetes oidc-login

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'

  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
opts = {
  region: 'us-test-1' # String | 
}

begin
  # kubernetes oidc-login
  result = api_instance.oidc_login(opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->oidc_login: #{e}"
end
```

#### Using the oidc_login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OidcLoginResponse>, Integer, Hash)> oidc_login_with_http_info(opts)

```ruby
begin
  # kubernetes oidc-login
  data, status_code, headers = api_instance.oidc_login_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OidcLoginResponse>
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->oidc_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** |  | [optional] |

### Return type

[**OidcLoginResponse**](OidcLoginResponse.md)

### Authorization

[api_key](../README.md#api_key), [bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restart_all_dynos

> restart_all_dynos(app_id_or_name)

restart all dynos

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # restart all dynos
  api_instance.restart_all_dynos(app_id_or_name)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->restart_all_dynos: #{e}"
end
```

#### Using the restart_all_dynos_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restart_all_dynos_with_http_info(app_id_or_name)

```ruby
begin
  # restart all dynos
  data, status_code, headers = api_instance.restart_all_dynos_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->restart_all_dynos_with_http_info: #{e}"
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


## restart_dynos

> restart_dynos(app_id_or_name, dyno)

restart specific dyno

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
dyno = 'dyno_example' # String | dyno name

begin
  # restart specific dyno
  api_instance.restart_dynos(app_id_or_name, dyno)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->restart_dynos: #{e}"
end
```

#### Using the restart_dynos_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restart_dynos_with_http_info(app_id_or_name, dyno)

```ruby
begin
  # restart specific dyno
  data, status_code, headers = api_instance.restart_dynos_with_http_info(app_id_or_name, dyno)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->restart_dynos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **dyno** | **String** | dyno name |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_config_vars

> set_config_vars(app_id_or_name, opts)

set or update config-vars

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
opts = {
  request_body: { key: 'inner_example'} # Hash<String, String> | 
}

begin
  # set or update config-vars
  api_instance.set_config_vars(app_id_or_name, opts)
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->set_config_vars: #{e}"
end
```

#### Using the set_config_vars_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_config_vars_with_http_info(app_id_or_name, opts)

```ruby
begin
  # set or update config-vars
  data, status_code, headers = api_instance.set_config_vars_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DefaultApi->set_config_vars_with_http_info: #{e}"
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
- **Accept**: application/json


## team

> <Team> team(id)

show team

Show a team

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new
id = 'id_example' # String | Team name or ID

begin
  # show team
  result = api_instance.team(id)
  p result
rescue BuildClient::ApiError => e
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
rescue BuildClient::ApiError => e
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
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DefaultApi.new

begin
  # list all teams
  result = api_instance.teams
  p result
rescue BuildClient::ApiError => e
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
rescue BuildClient::ApiError => e
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

