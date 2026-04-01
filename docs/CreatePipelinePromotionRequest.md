# BuildClient::CreatePipelinePromotionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**CreatePipelinePromotionRequestSource**](CreatePipelinePromotionRequestSource.md) |  |  |
| **targets** | [**Array&lt;CreatePipelinePromotionRequestTargetsInner&gt;**](CreatePipelinePromotionRequestTargetsInner.md) | Target apps. Omit to promote to all downstream apps. | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreatePipelinePromotionRequest.new(
  source: null,
  targets: null
)
```

