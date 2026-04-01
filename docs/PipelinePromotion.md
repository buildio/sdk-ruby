# BuildClient::PipelinePromotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **pipeline** | [**PromotionPipeline**](PromotionPipeline.md) |  |  |
| **source** | [**PromotionSource**](PromotionSource.md) |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::PipelinePromotion.new(
  id: null,
  status: null,
  created_at: null,
  updated_at: null,
  pipeline: null,
  source: null
)
```

