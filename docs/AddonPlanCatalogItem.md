# BuildClient::AddonPlanCatalogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **human_name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **state** | **String** |  |  |
| **monthly_price** | [**AddonPlanPrice**](AddonPlanPrice.md) |  | [optional] |
| **yearly_price** | [**AddonPlanPrice**](AddonPlanPrice.md) |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::AddonPlanCatalogItem.new(
  id: null,
  name: null,
  human_name: null,
  description: null,
  state: null,
  monthly_price: null,
  yearly_price: null
)
```

