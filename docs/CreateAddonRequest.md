# BuildClient::CreateAddonRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | **String** | Addon service and plan in format \&quot;service:plan\&quot; |  |
| **name** | **String** | Globally unique addon name (optional) | [optional] |
| **description** | **String** | User-provided description of the addon (optional) | [optional] |
| **config** | **Hash&lt;String, Object&gt;** | Addon-specific configuration options (use list-addon-fields to discover available options for each service) | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateAddonRequest.new(
  plan: schematgo:free,
  name: null,
  description: null,
  config: {&quot;region&quot;:&quot;us-east-1&quot;,&quot;company-name&quot;:&quot;my-app&quot;}
)
```

