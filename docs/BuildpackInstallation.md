# BuildClient::BuildpackInstallation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ordinal** | **Integer** | Determines the order in which the buildpacks will execute |  |
| **buildpack** | [**BuildpackInstallationBuildpack**](BuildpackInstallationBuildpack.md) |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::BuildpackInstallation.new(
  ordinal: null,
  buildpack: null
)
```

