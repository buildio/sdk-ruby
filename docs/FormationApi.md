# BuildClient::FormationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_formation**](FormationApi.md#update_formation) | **PATCH** /api/v1/apps/{app_id_or_name}/formation | batch update formation |


## update_formation

> Hash&lt;String, Object&gt; update_formation(app_id_or_name, opts)

batch update formation

Batch update process formation (Heroku-compatible)

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

api_instance = BuildClient::FormationApi.new
app_id_or_name = 'app_id_or_name_example' # String | App ID or name
opts = {
  formation_batch_update_request: BuildClient::FormationBatchUpdateRequest.new({updates: [BuildClient::FormationUpdate.new({type: 'type_example'})]}) # FormationBatchUpdateRequest | 
}

begin
  # batch update formation
  result = api_instance.update_formation(app_id_or_name, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling FormationApi->update_formation: #{e}"
end
```

#### Using the update_formation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> update_formation_with_http_info(app_id_or_name, opts)

```ruby
begin
  # batch update formation
  data, status_code, headers = api_instance.update_formation_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue BuildClient::ApiError => e
  puts "Error when calling FormationApi->update_formation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | App ID or name |  |
| **formation_batch_update_request** | [**FormationBatchUpdateRequest**](FormationBatchUpdateRequest.md) |  | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

