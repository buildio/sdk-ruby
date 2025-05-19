# BuildClient::CreateReviewAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch** | **String** | Branch to build the review app from |  |
| **pull_request_number** | **Integer** | Pull request number |  |
| **source_blob_url** | **String** | URL to the source code archive | [optional] |
| **title** | **String** | Title of the pull request | [optional] |
| **description** | **String** | Description of the pull request | [optional] |
| **github_repo** | **String** | GitHub repository stub (owner/repo) | [optional] |
| **environment** | **Hash&lt;String, String&gt;** | Environment variables for the app | [optional] |

## Example

```ruby
require 'build_client'

instance = BuildClient::CreateReviewAppRequest.new(
  branch: null,
  pull_request_number: null,
  source_blob_url: null,
  title: null,
  description: null,
  github_repo: null,
  environment: null
)
```

