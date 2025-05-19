# BuildClient::CreateBuildRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch** | **String** |  | [optional] |
| **commitish** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateBuildRequest.new(
  branch: null,
  commitish: null,
  description: null
)
```

