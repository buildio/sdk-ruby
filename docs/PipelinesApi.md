# BuildClient::PipelinesApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pipeline**](PipelinesApi.md#get_pipeline) | **GET** /api/v1/pipelines/{id} | get a specific pipeline |
| [**list_pipelines**](PipelinesApi.md#list_pipelines) | **GET** /api/v1/pipelines | list pipelines |


## get_pipeline

> <Pipeline> get_pipeline(id)

get a specific pipeline

Retrieves details for a specific pipeline

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::PipelinesApi.new
id = 'id_example' # String | Pipeline ID

begin
  # get a specific pipeline
  result = api_instance.get_pipeline(id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline: #{e}"
end
```

#### Using the get_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_with_http_info(id)

```ruby
begin
  # get a specific pipeline
  data, status_code, headers = api_instance.get_pipeline_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pipeline ID |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pipelines

> <Array<Pipeline>> list_pipelines

list pipelines

Lists all pipelines accessible to the current user

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::PipelinesApi.new

begin
  # list pipelines
  result = api_instance.list_pipelines
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipelines: #{e}"
end
```

#### Using the list_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pipeline>>, Integer, Hash)> list_pipelines_with_http_info

```ruby
begin
  # list pipelines
  data, status_code, headers = api_instance.list_pipelines_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pipeline>>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipelines_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

