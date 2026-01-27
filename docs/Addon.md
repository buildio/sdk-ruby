# BuildClient::Addon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** | Globally unique addon name | [optional] |
| **addon_service** | [**AddonService**](AddonService.md) |  |  |
| **plan** | [**AddonPlan**](AddonPlan.md) |  |  |
| **app** | [**AddonApp**](AddonApp.md) |  |  |
| **state** | **String** |  |  |
| **config_vars** | **Array&lt;String&gt;** | Config var names provided by this addon | [optional] |
| **billed_price** | [**AddonBilledPrice**](AddonBilledPrice.md) |  | [optional] |
| **web_url** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::Addon.new(
  id: null,
  name: null,
  addon_service: null,
  plan: null,
  app: null,
  state: null,
  config_vars: null,
  billed_price: null,
  web_url: null,
  created_at: null,
  updated_at: null
)
```

