# BuildClient::PipelinePromotionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pipeline_promotion**](PipelinePromotionsApi.md#create_pipeline_promotion) | **POST** /api/v1/pipelines/{pipeline_id}/promotions | create a pipeline promotion |
| [**get_pipeline_promotion**](PipelinePromotionsApi.md#get_pipeline_promotion) | **GET** /api/v1/pipelines/{pipeline_id}/promotions/{id} | get promotion status |
| [**get_pipeline_promotion_targets**](PipelinePromotionsApi.md#get_pipeline_promotion_targets) | **GET** /api/v1/pipelines/{pipeline_id}/promotions/{id}/promotion-targets | list promotion targets |


## create_pipeline_promotion

> <PipelinePromotion> create_pipeline_promotion(pipeline_id, opts)

create a pipeline promotion

Creates a promotion from a source app to one or more target apps. Returns immediately with pending status — clients poll GET .../promotions/:id for completion.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::PipelinePromotionsApi.new
pipeline_id = 'pipeline_id_example' # String | Pipeline ID
opts = {
  create_pipeline_promotion_request: BuildClient::CreatePipelinePromotionRequest.new({source: BuildClient::CreatePipelinePromotionRequestSource.new({app: 'app_example'})}) # CreatePipelinePromotionRequest | 
}

begin
  # create a pipeline promotion
  result = api_instance.create_pipeline_promotion(pipeline_id, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->create_pipeline_promotion: #{e}"
end
```

#### Using the create_pipeline_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelinePromotion>, Integer, Hash)> create_pipeline_promotion_with_http_info(pipeline_id, opts)

```ruby
begin
  # create a pipeline promotion
  data, status_code, headers = api_instance.create_pipeline_promotion_with_http_info(pipeline_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelinePromotion>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->create_pipeline_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | Pipeline ID |  |
| **create_pipeline_promotion_request** | [**CreatePipelinePromotionRequest**](CreatePipelinePromotionRequest.md) |  | [optional] |

### Return type

[**PipelinePromotion**](PipelinePromotion.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_pipeline_promotion

> <PipelinePromotion> get_pipeline_promotion(pipeline_id, id)

get promotion status

Returns aggregate promotion status. Clients poll this until status is no longer pending.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::PipelinePromotionsApi.new
pipeline_id = 'pipeline_id_example' # String | Pipeline ID
id = 'id_example' # String | Promotion group ID

begin
  # get promotion status
  result = api_instance.get_pipeline_promotion(pipeline_id, id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->get_pipeline_promotion: #{e}"
end
```

#### Using the get_pipeline_promotion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelinePromotion>, Integer, Hash)> get_pipeline_promotion_with_http_info(pipeline_id, id)

```ruby
begin
  # get promotion status
  data, status_code, headers = api_instance.get_pipeline_promotion_with_http_info(pipeline_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelinePromotion>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->get_pipeline_promotion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | Pipeline ID |  |
| **id** | **String** | Promotion group ID |  |

### Return type

[**PipelinePromotion**](PipelinePromotion.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_promotion_targets

> <Array<PromotionTarget>> get_pipeline_promotion_targets(pipeline_id, id)

list promotion targets

Returns per-target status with error_message on failure.

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BuildClient::PipelinePromotionsApi.new
pipeline_id = 'pipeline_id_example' # String | Pipeline ID
id = 'id_example' # String | Promotion group ID

begin
  # list promotion targets
  result = api_instance.get_pipeline_promotion_targets(pipeline_id, id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->get_pipeline_promotion_targets: #{e}"
end
```

#### Using the get_pipeline_promotion_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PromotionTarget>>, Integer, Hash)> get_pipeline_promotion_targets_with_http_info(pipeline_id, id)

```ruby
begin
  # list promotion targets
  data, status_code, headers = api_instance.get_pipeline_promotion_targets_with_http_info(pipeline_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PromotionTarget>>
rescue BuildClient::ApiError => e
  puts "Error when calling PipelinePromotionsApi->get_pipeline_promotion_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** | Pipeline ID |  |
| **id** | **String** | Promotion group ID |  |

### Return type

[**Array&lt;PromotionTarget&gt;**](PromotionTarget.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

