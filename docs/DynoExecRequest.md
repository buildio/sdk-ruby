# BuildClient::DynoExecRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command** | **Array&lt;String&gt;** | Command to execute in the dyno. Must be an array of strings (e.g. [\&quot;/bin/sh\&quot;, \&quot;-c\&quot;, \&quot;echo hello\&quot;]). |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::DynoExecRequest.new(
  command: null
)
```

