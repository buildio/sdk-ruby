# BuildClient::PromotionTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **error_message** | **String** |  | [optional] |
| **app** | [**PromotionTargetApp**](PromotionTargetApp.md) |  |  |
| **pipeline_promotion** | [**PromotionTargetPromotion**](PromotionTargetPromotion.md) |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::PromotionTarget.new(
  id: null,
  status: null,
  error_message: null,
  app: null,
  pipeline_promotion: null
)
```

