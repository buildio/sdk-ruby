# BuildClient::Process

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** |  |  |
| **status** | **String** |  |  |
| **started_at** | **String** |  |  |
| **restarts** | **Integer** |  | [optional] |
| **restarted_at** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::Process.new(
  index: null,
  status: null,
  started_at: null,
  restarts: null,
  restarted_at: null
)
```

