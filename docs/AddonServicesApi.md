# BuildClient::AddonServicesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_addon_service_plans**](AddonServicesApi.md#list_addon_service_plans) | **GET** /api/v1/addon-services/{name}/plans | list plans for addon service |
| [**list_addon_services**](AddonServicesApi.md#list_addon_services) | **GET** /api/v1/addon-services | list addon services |


## list_addon_service_plans

> <Array<AddonPlanCatalogItem>> list_addon_service_plans(name)

list plans for addon service

List all visible plans for an addon service

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

api_instance = BuildClient::AddonServicesApi.new
name = 'name_example' # String | Addon service name

begin
  # list plans for addon service
  result = api_instance.list_addon_service_plans(name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonServicesApi->list_addon_service_plans: #{e}"
end
```

#### Using the list_addon_service_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddonPlanCatalogItem>>, Integer, Hash)> list_addon_service_plans_with_http_info(name)

```ruby
begin
  # list plans for addon service
  data, status_code, headers = api_instance.list_addon_service_plans_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddonPlanCatalogItem>>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonServicesApi->list_addon_service_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Addon service name |  |

### Return type

[**Array&lt;AddonPlanCatalogItem&gt;**](AddonPlanCatalogItem.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_addon_services

> <Array<AddonServiceCatalogItem>> list_addon_services

list addon services

List all visible addon services from the catalog

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

api_instance = BuildClient::AddonServicesApi.new

begin
  # list addon services
  result = api_instance.list_addon_services
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonServicesApi->list_addon_services: #{e}"
end
```

#### Using the list_addon_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddonServiceCatalogItem>>, Integer, Hash)> list_addon_services_with_http_info

```ruby
begin
  # list addon services
  data, status_code, headers = api_instance.list_addon_services_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddonServiceCatalogItem>>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonServicesApi->list_addon_services_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AddonServiceCatalogItem&gt;**](AddonServiceCatalogItem.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

