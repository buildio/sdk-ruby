# BuildClient::ValidationErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **error_description** | **String** |  | [optional] |
| **details** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::ValidationErrors.new(
  error: validation_failed,
  error_description: Validation failed,
  details: {&quot;name&quot;:[&quot;is required&quot;],&quot;email&quot;:[&quot;is invalid&quot;]}
)
```

