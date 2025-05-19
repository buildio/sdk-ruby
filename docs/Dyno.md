# BuildClient::Dyno

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **quantity** | **Integer** |  |  |
| **size** | **String** |  |  |
| **display** | **String** |  |  |
| **processes** | [**Array&lt;Process&gt;**](Process.md) |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::Dyno.new(
  type: null,
  quantity: null,
  size: null,
  display: null,
  processes: null
)
```

