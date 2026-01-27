# BuildClient::AddonsApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_addon**](AddonsApi.md#create_addon) | **POST** /api/v1/apps/{app_id_or_name}/addons | create addon |
| [**destroy_addon**](AddonsApi.md#destroy_addon) | **DELETE** /api/v1/apps/{app_id_or_name}/addons/{addon_id_or_name} | destroy addon |
| [**get_addon**](AddonsApi.md#get_addon) | **GET** /api/v1/apps/{app_id_or_name}/addons/{addon_id_or_name} | show addon |
| [**list_app_addons**](AddonsApi.md#list_app_addons) | **GET** /api/v1/apps/{app_id_or_name}/addons | list addons |


## create_addon

> <Addon> create_addon(app_id_or_name, opts)

create addon

Create and provision a new addon for an app

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

api_instance = BuildClient::AddonsApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name
opts = {
  create_addon_request: BuildClient::CreateAddonRequest.new({plan: 'schematgo:free'}) # CreateAddonRequest | 
}

begin
  # create addon
  result = api_instance.create_addon(app_id_or_name, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->create_addon: #{e}"
end
```

#### Using the create_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Addon>, Integer, Hash)> create_addon_with_http_info(app_id_or_name, opts)

```ruby
begin
  # create addon
  data, status_code, headers = api_instance.create_addon_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Addon>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->create_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |
| **create_addon_request** | [**CreateAddonRequest**](CreateAddonRequest.md) |  | [optional] |

### Return type

[**Addon**](Addon.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_addon

> <Addon> destroy_addon(app_id_or_name, addon_id_or_name)

destroy addon

Destroy an addon (deprovisions and removes from all attached apps)

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

api_instance = BuildClient::AddonsApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name
addon_id_or_name = 'addon_id_or_name_example' # String | Addon ID or name

begin
  # destroy addon
  result = api_instance.destroy_addon(app_id_or_name, addon_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->destroy_addon: #{e}"
end
```

#### Using the destroy_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Addon>, Integer, Hash)> destroy_addon_with_http_info(app_id_or_name, addon_id_or_name)

```ruby
begin
  # destroy addon
  data, status_code, headers = api_instance.destroy_addon_with_http_info(app_id_or_name, addon_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Addon>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->destroy_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |
| **addon_id_or_name** | **String** | Addon ID or name |  |

### Return type

[**Addon**](Addon.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_addon

> <Addon> get_addon(app_id_or_name, addon_id_or_name)

show addon

Get info about an addon

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

api_instance = BuildClient::AddonsApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name
addon_id_or_name = 'addon_id_or_name_example' # String | Addon ID or name

begin
  # show addon
  result = api_instance.get_addon(app_id_or_name, addon_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->get_addon: #{e}"
end
```

#### Using the get_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Addon>, Integer, Hash)> get_addon_with_http_info(app_id_or_name, addon_id_or_name)

```ruby
begin
  # show addon
  data, status_code, headers = api_instance.get_addon_with_http_info(app_id_or_name, addon_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Addon>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->get_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |
| **addon_id_or_name** | **String** | Addon ID or name |  |

### Return type

[**Addon**](Addon.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_app_addons

> <Array<Addon>> list_app_addons(app_id_or_name)

list addons

List all addons for an app

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

api_instance = BuildClient::AddonsApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name

begin
  # list addons
  result = api_instance.list_app_addons(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->list_app_addons: #{e}"
end
```

#### Using the list_app_addons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Addon>>, Integer, Hash)> list_app_addons_with_http_info(app_id_or_name)

```ruby
begin
  # list addons
  data, status_code, headers = api_instance.list_app_addons_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Addon>>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonsApi->list_app_addons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |

### Return type

[**Array&lt;Addon&gt;**](Addon.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

