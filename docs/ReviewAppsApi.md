# BuildClient::ReviewAppsApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_review_app**](ReviewAppsApi.md#create_review_app) | **POST** /api/v1/pipelines/{pipeline_id}/review-apps | create a review app |
| [**delete_review_app**](ReviewAppsApi.md#delete_review_app) | **DELETE** /api/v1/review-apps/{id} | delete a review app |
| [**get_review_app**](ReviewAppsApi.md#get_review_app) | **GET** /api/v1/review-apps/{id} | get a specific review app |
| [**get_review_app_by_app_id**](ReviewAppsApi.md#get_review_app_by_app_id) | **GET** /api/v1/apps/{app_id}/review-apps | get review app by its app id |
| [**list_review_apps**](ReviewAppsApi.md#list_review_apps) | **GET** /api/v1/pipelines/{pipeline_id}/review-apps | list review apps for a pipeline |


## create_review_app

> <App> create_review_app(pipeline_id, opts)

create a review app

Creates a new review app for a pipeline.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::ReviewAppsApi.new
pipeline_id = 'pipeline_id_example' # String | Pipeline ID
opts = {
  create_review_app_request: BuildClient::CreateReviewAppRequest.new({branch: 'branch_example', pull_request_number: 37}) # CreateReviewAppRequest | 
}

begin
  # create a review app
  result = api_instance.create_review_app(pipeline_id, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->create_review_app: #{e}"
end
```

#### Using the create_review_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> create_review_app_with_http_info(pipeline_id, opts)

```ruby
begin
  # create a review app
  data, status_code, headers = api_instance.create_review_app_with_http_info(pipeline_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->create_review_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | Pipeline ID |  |
| **create_review_app_request** | [**CreateReviewAppRequest**](CreateReviewAppRequest.md) |  | [optional] |

### Return type

[**App**](App.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_review_app

> delete_review_app(id)

delete a review app

Deletes a specific review app.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::ReviewAppsApi.new
id = 'id_example' # String | Review App ID

begin
  # delete a review app
  api_instance.delete_review_app(id)
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->delete_review_app: #{e}"
end
```

#### Using the delete_review_app_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_review_app_with_http_info(id)

```ruby
begin
  # delete a review app
  data, status_code, headers = api_instance.delete_review_app_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->delete_review_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Review App ID |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_review_app

> <App> get_review_app(id)

get a specific review app

Retrieves details for a specific review app.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::ReviewAppsApi.new
id = 'id_example' # String | Review App ID

begin
  # get a specific review app
  result = api_instance.get_review_app(id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->get_review_app: #{e}"
end
```

#### Using the get_review_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> get_review_app_with_http_info(id)

```ruby
begin
  # get a specific review app
  data, status_code, headers = api_instance.get_review_app_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->get_review_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Review App ID |  |

### Return type

[**App**](App.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_review_app_by_app_id

> <App> get_review_app_by_app_id(app_id)

get review app by its app id

Retrieves details for a specific review app using its app ID.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::ReviewAppsApi.new
app_id = 'app_id_example' # String | App ID of the review app

begin
  # get review app by its app id
  result = api_instance.get_review_app_by_app_id(app_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->get_review_app_by_app_id: #{e}"
end
```

#### Using the get_review_app_by_app_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<App>, Integer, Hash)> get_review_app_by_app_id_with_http_info(app_id)

```ruby
begin
  # get review app by its app id
  data, status_code, headers = api_instance.get_review_app_by_app_id_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <App>
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->get_review_app_by_app_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | App ID of the review app |  |

### Return type

[**App**](App.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_review_apps

> <Array<App>> list_review_apps(pipeline_id)

list review apps for a pipeline

Lists all review apps for a given pipeline.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::ReviewAppsApi.new
pipeline_id = 'pipeline_id_example' # String | Pipeline ID

begin
  # list review apps for a pipeline
  result = api_instance.list_review_apps(pipeline_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->list_review_apps: #{e}"
end
```

#### Using the list_review_apps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<App>>, Integer, Hash)> list_review_apps_with_http_info(pipeline_id)

```ruby
begin
  # list review apps for a pipeline
  data, status_code, headers = api_instance.list_review_apps_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<App>>
rescue BuildClient::ApiError => e
  puts "Error when calling ReviewAppsApi->list_review_apps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | Pipeline ID |  |

### Return type

[**Array&lt;App&gt;**](App.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

