# BuildClient::CreateDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hostname** | **String** | The domain to add |  |
| **cert** | **String** | Certificate name (optional) | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateDomainRequest.new(
  hostname: null,
  cert: null
)
```

