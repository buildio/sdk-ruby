# BuildClient::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Machine-readable error code |  |
| **message** | **String** | Human-readable error message | [optional] |
| **details** | **Hash&lt;String, Object&gt;** | Additional error details (optional) | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::ErrorResponse.new(
  code: null,
  message: null,
  details: null
)
```

