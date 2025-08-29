# BuildClient::DomainsApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_domains**](DomainsApi.md#clear_domains) | **DELETE** /api/v1/apps/{app_id_or_name}/domains | clear all domains |
| [**create_domain**](DomainsApi.md#create_domain) | **POST** /api/v1/apps/{app_id_or_name}/domains | create domain |
| [**list_domains**](DomainsApi.md#list_domains) | **GET** /api/v1/apps/{app_id_or_name}/domains | list domains |
| [**remove_domain**](DomainsApi.md#remove_domain) | **DELETE** /api/v1/apps/{app_id_or_name}/domains/{domain_id} | remove domain |
| [**show_domain**](DomainsApi.md#show_domain) | **GET** /api/v1/apps/{app_id_or_name}/domains/{domain_id} | show domain |
| [**update_domain**](DomainsApi.md#update_domain) | **PATCH** /api/v1/apps/{app_id_or_name}/domains/{domain_id} | update domain |


## clear_domains

> clear_domains(app_id_or_name)

clear all domains

Clear all custom domains from an app

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # clear all domains
  api_instance.clear_domains(app_id_or_name)
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->clear_domains: #{e}"
end
```

#### Using the clear_domains_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clear_domains_with_http_info(app_id_or_name)

```ruby
begin
  # clear all domains
  data, status_code, headers = api_instance.clear_domains_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->clear_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_domain

> <Domain> create_domain(app_id_or_name, opts)

create domain

Add a domain to an app

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
opts = {
  create_domain_request: BuildClient::CreateDomainRequest.new({hostname: 'hostname_example'}) # CreateDomainRequest | 
}

begin
  # create domain
  result = api_instance.create_domain(app_id_or_name, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->create_domain: #{e}"
end
```

#### Using the create_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> create_domain_with_http_info(app_id_or_name, opts)

```ruby
begin
  # create domain
  data, status_code, headers = api_instance.create_domain_with_http_info(app_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->create_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **create_domain_request** | [**CreateDomainRequest**](CreateDomainRequest.md) |  | [optional] |

### Return type

[**Domain**](Domain.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_domains

> <Array<Domain>> list_domains(app_id_or_name)

list domains

List all domains for an app (platform domain + custom domains)

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name

begin
  # list domains
  result = api_instance.list_domains(app_id_or_name)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->list_domains: #{e}"
end
```

#### Using the list_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Domain>>, Integer, Hash)> list_domains_with_http_info(app_id_or_name)

```ruby
begin
  # list domains
  data, status_code, headers = api_instance.list_domains_with_http_info(app_id_or_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Domain>>
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->list_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |

### Return type

[**Array&lt;Domain&gt;**](Domain.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_domain

> remove_domain(app_id_or_name, domain_id)

remove domain

Remove a domain from an app

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
domain_id = 'domain_id_example' # String | domain id or hostname

begin
  # remove domain
  api_instance.remove_domain(app_id_or_name, domain_id)
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->remove_domain: #{e}"
end
```

#### Using the remove_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_domain_with_http_info(app_id_or_name, domain_id)

```ruby
begin
  # remove domain
  data, status_code, headers = api_instance.remove_domain_with_http_info(app_id_or_name, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->remove_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **domain_id** | **String** | domain id or hostname |  |

### Return type

nil (empty response body)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## show_domain

> <Domain> show_domain(app_id_or_name, domain_id)

show domain

Get detailed information about a specific domain

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
domain_id = 'domain_id_example' # String | domain id or hostname

begin
  # show domain
  result = api_instance.show_domain(app_id_or_name, domain_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->show_domain: #{e}"
end
```

#### Using the show_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> show_domain_with_http_info(app_id_or_name, domain_id)

```ruby
begin
  # show domain
  data, status_code, headers = api_instance.show_domain_with_http_info(app_id_or_name, domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->show_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **domain_id** | **String** | domain id or hostname |  |

### Return type

[**Domain**](Domain.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_domain

> <Domain> update_domain(app_id_or_name, domain_id, opts)

update domain

Update a domain (e.g., change SSL certificate)

### Examples

```ruby
require 'time'
require 'build_client'
# setup authorization
BuildClient.configure do |config|
  # Configure Bearer authorization: bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BuildClient::DomainsApi.new
app_id_or_name = 'app_id_or_name_example' # String | app id or name
domain_id = 'domain_id_example' # String | domain id or hostname
opts = {
  update_domain_request: BuildClient::UpdateDomainRequest.new # UpdateDomainRequest | 
}

begin
  # update domain
  result = api_instance.update_domain(app_id_or_name, domain_id, opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->update_domain: #{e}"
end
```

#### Using the update_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Domain>, Integer, Hash)> update_domain_with_http_info(app_id_or_name, domain_id, opts)

```ruby
begin
  # update domain
  data, status_code, headers = api_instance.update_domain_with_http_info(app_id_or_name, domain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Domain>
rescue BuildClient::ApiError => e
  puts "Error when calling DomainsApi->update_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id_or_name** | **String** | app id or name |  |
| **domain_id** | **String** | domain id or hostname |  |
| **update_domain_request** | [**UpdateDomainRequest**](UpdateDomainRequest.md) |  | [optional] |

### Return type

[**Domain**](Domain.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

