# BuildClient::CreateAddonAttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon** | **String** | Addon name or ID to attach |  |
| **app** | **String** | App name or ID to attach the addon to |  |
| **name** | **String** | Attachment name (e.g., DATABASE_RED) | [optional] |
| **confirm** | **String** | Owning app name for confirmation | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateAddonAttachmentRequest.new(
  addon: null,
  app: null,
  name: null,
  confirm: null
)
```

