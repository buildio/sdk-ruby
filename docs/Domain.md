# BuildClient::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **hostname** | **String** | The domain name |  |
| **kind** | **String** | Type of domain |  |
| **cname** | **String** | CNAME target for DNS configuration | [optional] |
| **status** | **String** | Domain status |  |
| **acm_status** | **String** | SSL certificate status | [optional] |
| **acm_status_reason** | **String** | Reason for certificate status | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **sni_endpoint** | [**DomainSniEndpoint**](DomainSniEndpoint.md) |  | [optional] |
| **app** | [**DomainApp**](DomainApp.md) |  |  |

## Example

```ruby
require 'build_client'

instance = BuildClient::Domain.new(
  id: null,
  hostname: null,
  kind: null,
  cname: null,
  status: null,
  acm_status: null,
  acm_status_reason: null,
  created_at: null,
  updated_at: null,
  sni_endpoint: null,
  app: null
)
```

