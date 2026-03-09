# BuildClient::UpdateAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build_stack** | **String** | Stack for the next build (e.g. heroku-22, heroku-24) | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::UpdateAppRequest.new(
  build_stack: null
)
```

