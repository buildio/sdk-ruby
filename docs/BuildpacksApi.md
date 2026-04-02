# BuildClient::BuildpacksApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_buildpacks**](BuildpacksApi.md#list_buildpacks) | **GET** /api/v1/apps/{app_id_or_name}/buildpacks | list buildpacks |
| [**update_buildpacks**](BuildpacksApi.md#update_buildpacks) | **PUT** /api/v1/apps/{app_id_or_name}/buildpacks | update buildpacks |


## list_buildpacks

> <Array<BuildpackInstallation>> list_buildpacks(app_id_or_name)

list buildpacks

List an app's buildpack installations in execution order

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

api_instance = BuildClient::BuildpacksApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name

begin
  # list buildpacks
  result = api_instance.list_buildpacks(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling BuildpacksApi->list_buildpacks: #{e}"
end
```

#### Using the list_buildpacks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BuildpackInstallation>>, Integer, Hash)> list_buildpacks_with_http_info(app_id_or_name)

```ruby
begin
  # list buildpacks
  data, status_code, headers = api_instance.list_buildpacks_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BuildpackInstallation>>
rescue BuildClient::ApiError => e
  puts "Error when calling BuildpacksApi->list_buildpacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |

### Return type

[**Array&lt;BuildpackInstallation&gt;**](BuildpackInstallation.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_buildpacks

> <Array<BuildpackInstallation>> update_buildpacks(app_id_or_name, opts)

update buildpacks

Replace an app's buildpack list. Order determines execution order.

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

api_instance = BuildClient::BuildpacksApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name
opts = {
  update_buildpacks_request: BuildClient::UpdateBuildpacksRequest.new({updates: [BuildClient::UpdateBuildpacksRequestUpdatesInner.new({buildpack: 'buildpack_example'})]}) # UpdateBuildpacksRequest | 
}

begin
  # update buildpacks
  result = api_instance.update_buildpacks(app_id_or_name, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling BuildpacksApi->update_buildpacks: #{e}"
end
```

#### Using the update_buildpacks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BuildpackInstallation>>, Integer, Hash)> update_buildpacks_with_http_info(app_id_or_name, opts)

```ruby
begin
  # update buildpacks
  data, status_code, headers = api_instance.update_buildpacks_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BuildpackInstallation>>
rescue BuildClient::ApiError => e
  puts "Error when calling BuildpacksApi->update_buildpacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |
| **update_buildpacks_request** | [**UpdateBuildpacksRequest**](UpdateBuildpacksRequest.md) |  | [optional] |

### Return type

[**Array&lt;BuildpackInstallation&gt;**](BuildpackInstallation.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

