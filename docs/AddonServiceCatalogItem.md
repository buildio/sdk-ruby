# BuildClient::AddonServiceCatalogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **human_name** | **String** |  |  |
| **state** | **String** |  |  |
| **supports_log_drains** | **Boolean** |  | [optional] |
| **supports_sharing** | **Boolean** |  | [optional] |
| **supports_multiple_installations** | **Boolean** |  | [optional] |
| **category** | [**AddonServiceCategory**](AddonServiceCategory.md) |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::AddonServiceCatalogItem.new(
  id: null,
  name: null,
  human_name: null,
  state: null,
  supports_log_drains: null,
  supports_sharing: null,
  supports_multiple_installations: null,
  category: null
)
```

