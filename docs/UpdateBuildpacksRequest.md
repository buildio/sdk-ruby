# BuildClient::UpdateBuildpacksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updates** | [**Array&lt;UpdateBuildpacksRequestUpdatesInner&gt;**](UpdateBuildpacksRequestUpdatesInner.md) | Ordered list of buildpacks. The order determines execution order. |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::UpdateBuildpacksRequest.new(
  updates: null
)
```

