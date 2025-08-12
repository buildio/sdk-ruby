# BuildClient::PipelinesApi

All URIs are relative to *https://devhost.antimony.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pipeline**](PipelinesApi.md#get_pipeline) | **GET** /api/v1/pipelines/{pipeline_id_or_name} | get a specific pipeline |
| [**list_pipeline_apps**](PipelinesApi.md#list_pipeline_apps) | **GET** /api/v1/pipelines/{pipeline_id_or_name}/apps | list apps in a pipeline |
| [**list_pipelines**](PipelinesApi.md#list_pipelines) | **GET** /api/v1/pipelines | list pipelines |


## get_pipeline

> <Pipeline> get_pipeline(pipeline_id_or_name)

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
pipeline_id_or_name = 'pipeline_id_or_name_example' # String | Pipeline ID or Name

begin
  # get a specific pipeline
  result = api_instance.get_pipeline(pipeline_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline: #{e}"
end
```

#### Using the get_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_with_http_info(pipeline_id_or_name)

```ruby
begin
  # get a specific pipeline
  data, status_code, headers = api_instance.get_pipeline_with_http_info(pipeline_id_or_name)
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
| **pipeline_id_or_name** | **String** | Pipeline ID or Name |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pipeline_apps

> <Array<App>> list_pipeline_apps(pipeline_id_or_name)

list apps in a pipeline

A list of applications in the pipeline.

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
pipeline_id_or_name = 'pipeline_id_or_name_example' # String | Pipeline ID or Name

begin
  # list apps in a pipeline
  result = api_instance.list_pipeline_apps(pipeline_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipeline_apps: #{e}"
end
```

#### Using the list_pipeline_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<App>>, Integer, Hash)> list_pipeline_apps_with_http_info(pipeline_id_or_name)

```ruby
begin
  # list apps in a pipeline
  data, status_code, headers = api_instance.list_pipeline_apps_with_http_info(pipeline_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<App>>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinesApi->list_pipeline_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id_or_name** | **String** | Pipeline ID or Name |  |

### Return type

[**Array&lt;App&gt;**](App.md)

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

