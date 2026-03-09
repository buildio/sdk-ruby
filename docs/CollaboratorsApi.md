# BuildClient::CollaboratorsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_apps_app_id_collaborators_get**](CollaboratorsApi.md#api_v1_apps_app_id_collaborators_get) | **GET** /api/v1/apps/{app_id}/collaborators | List collaborators for an app |


## api_v1_apps_app_id_collaborators_get

> <Array<Collaborator>> api_v1_apps_app_id_collaborators_get(app_id)

List collaborators for an app

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

api_instance = BuildClient::CollaboratorsApi.new
app_id = 'app_id_example' # String | 

begin
  # List collaborators for an app
  result = api_instance.api_v1_apps_app_id_collaborators_get(app_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling CollaboratorsApi->api_v1_apps_app_id_collaborators_get: #{e}"
end
```

#### Using the api_v1_apps_app_id_collaborators_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Collaborator>>, Integer, Hash)> api_v1_apps_app_id_collaborators_get_with_http_info(app_id)

```ruby
begin
  # List collaborators for an app
  data, status_code, headers = api_instance.api_v1_apps_app_id_collaborators_get_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Collaborator>>
rescue BuildClient::ApiError => e
  puts "Error when calling CollaboratorsApi->api_v1_apps_app_id_collaborators_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

[**Array&lt;Collaborator&gt;**](Collaborator.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

