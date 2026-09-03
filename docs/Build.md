# BuildClient::Build

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **app** | [**GetPipelineDiff200ResponseSource**](GetPipelineDiff200ResponseSource.md) |  |  |
| **user** | [**BuildUser**](BuildUser.md) |  | [optional] |
| **source_blob** | [**BuildSourceBlob**](BuildSourceBlob.md) |  | [optional] |
| **buildpacks** | [**Array&lt;BuildBuildpacksInner&gt;**](BuildBuildpacksInner.md) |  | [optional] |
| **stack** | **String** |  |  |
| **state** | **String** | Build state, reported verbatim rather than collapsed. |  |
| **output_stream_url** | **String** |  | [optional] |
| **slug** | [**BuildSlug**](BuildSlug.md) |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::Build.new(
  id: null,
  app: null,
  user: null,
  source_blob: null,
  buildpacks: null,
  stack: null,
  state: null,
  output_stream_url: null,
  slug: null,
  created_at: null,
  updated_at: null
)
```

