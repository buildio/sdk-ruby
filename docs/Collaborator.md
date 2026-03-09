# BuildClient::Collaborator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **user** | [**CollaboratorUser**](CollaboratorUser.md) |  |  |
| **app** | [**CollaboratorApp**](CollaboratorApp.md) |  |  |
| **role** | **String** |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::Collaborator.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  app: null,
  role: null
)
```

