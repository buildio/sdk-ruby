# BuildClient::AddonAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** | Attachment name (e.g., DATABASE, DATABASE_RED) |  |
| **addon** | [**AttachmentAddon**](AttachmentAddon.md) |  |  |
| **app** | [**AddonApp**](AddonApp.md) |  |  |
| **state** | **String** |  |  |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::AddonAttachment.new(
  id: null,
  name: null,
  addon: null,
  app: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

