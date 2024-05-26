# BuildClient::Namespace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **team** | [**AppTeam**](AppTeam.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **actor** | [**NamespaceActor**](NamespaceActor.md) |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::Namespace.new(
  id: null,
  name: null,
  team: null,
  description: null,
  state: null,
  region: null,
  actor: null,
  created_at: null,
  updated_at: null
)
```

