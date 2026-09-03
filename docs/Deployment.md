# BuildClient::Deployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **app** | [**GetPipelineDiff200ResponseSource**](GetPipelineDiff200ResponseSource.md) |  |  |
| **build** | [**DeploymentBuild**](DeploymentBuild.md) |  | [optional] |
| **user** | [**BuildUser**](BuildUser.md) |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **state** | **String** | Deployment state, reported verbatim rather than collapsed. |  |
| **current** | **Boolean** | Whether this is the app&#39;s current deployment. |  |
| **failover** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::Deployment.new(
  id: null,
  app: null,
  build: null,
  user: null,
  version: null,
  description: null,
  state: null,
  current: null,
  failover: null,
  created_at: null,
  updated_at: null
)
```

