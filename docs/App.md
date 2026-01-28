# BuildClient::App

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **team** | [**AppTeam**](AppTeam.md) |  |  |
| **pipeline** | [**AppPipeline**](AppPipeline.md) |  | [optional] |
| **dns_refreshed_at** | **String** |  | [optional] |
| **builds_count** | **Integer** |  | [optional] |
| **deployments_count** | **Integer** |  | [optional] |
| **slugs_count** | **Integer** |  | [optional] |
| **current_build_id** | **String** |  | [optional] |
| **current_image_id** | **String** |  | [optional] |
| **current_deployment_id** | **String** |  | [optional] |
| **formation** | [**Hash&lt;String, AppFormationValue&gt;**](AppFormationValue.md) |  | [optional] |
| **stack** | **String** |  |  |
| **region** | **String** |  |  |
| **buildpacks** | [**Array&lt;AppBuildpack&gt;**](AppBuildpack.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **pipeline_stage** | **String** |  | [optional] |
| **policy_allow_websockets** | **Boolean** |  | [optional] |
| **policy_response_timeout** | **Integer** |  | [optional] |
| **policy_max_connections** | **Integer** |  | [optional] |
| **policy_erosion_resistance_seconds** | **Integer** |  | [optional] |
| **policy_share_process_namespace** | **Boolean** |  | [optional] |
| **policy_temporary_self_signed** | **Boolean** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **deleted_at** | **String** |  | [optional] |
| **web_url** | **String** | Full HTTPS URL for the application | [optional] |
| **branch** | **String** | GitHub branch for the application | [optional] |
| **environment_id** | **String** |  | [optional] |
| **ssh_host** | **String** | SSH host for running one-off dynos | [optional] |
| **ssh_port** | **Integer** | SSH port for running one-off dynos | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::App.new(
  id: null,
  name: null,
  team: null,
  pipeline: null,
  dns_refreshed_at: null,
  builds_count: null,
  deployments_count: null,
  slugs_count: null,
  current_build_id: null,
  current_image_id: null,
  current_deployment_id: null,
  formation: null,
  stack: null,
  region: null,
  buildpacks: null,
  description: null,
  pipeline_stage: null,
  policy_allow_websockets: null,
  policy_response_timeout: null,
  policy_max_connections: null,
  policy_erosion_resistance_seconds: null,
  policy_share_process_namespace: null,
  policy_temporary_self_signed: null,
  created_at: null,
  updated_at: null,
  deleted_at: null,
  web_url: null,
  branch: null,
  environment_id: null,
  ssh_host: null,
  ssh_port: null
)
```

