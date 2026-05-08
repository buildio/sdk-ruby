# BuildClient::DynoRunRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command** | **String** | Shell command to run |  |
| **type** | **String** | Process type (default: worker) | [optional] |
| **size** | **String** | Dyno size (default: from formation) | [optional] |
| **timeout** | **Integer** | Timeout in seconds (30–1800, default: 300) | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::DynoRunRequest.new(
  command: null,
  type: null,
  size: null,
  timeout: null
)
```

