# BuildClient::GetPipelineDiff200ResponseDiffsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app** | [**GetPipelineDiff200ResponseSource**](GetPipelineDiff200ResponseSource.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **ahead_by** | **Integer** |  | [optional] |
| **behind_by** | **Integer** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **commits** | [**Array&lt;GetPipelineDiff200ResponseDiffsInnerCommitsInner&gt;**](GetPipelineDiff200ResponseDiffsInnerCommitsInner.md) |  | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::GetPipelineDiff200ResponseDiffsInner.new(
  app: null,
  status: null,
  ahead_by: null,
  behind_by: null,
  error_message: null,
  commits: null
)
```

