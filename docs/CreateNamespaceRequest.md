# BuildClient::CreateNamespaceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **zone_id** | **String** | Zone ID (required - namespaces are zone-scoped) |  |
| **team_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateNamespaceRequest.new(
  name: null,
  zone_id: null,
  team_id: null,
  description: null,
  region: null
)
```

