# BuildClient::Pipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **team** | [**PipelineTeam**](PipelineTeam.md) |  |  |
| **environments** | [**Array&lt;PipelineEnvironmentsInner&gt;**](PipelineEnvironmentsInner.md) |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::Pipeline.new(
  id: null,
  name: null,
  team: null,
  environments: null,
  created_at: null,
  updated_at: null
)
```

