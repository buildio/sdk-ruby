# BuildClient::AddonAttachmentsApi

All URIs are relative to *https://app.build.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_addon_attachment**](AddonAttachmentsApi.md#create_addon_attachment) | **POST** /api/v1/addon-attachments | create addon attachment |
| [**delete_addon_attachment**](AddonAttachmentsApi.md#delete_addon_attachment) | **DELETE** /api/v1/addon-attachments/{addon_attachment_id} | delete addon attachment |
| [**get_addon_attachment**](AddonAttachmentsApi.md#get_addon_attachment) | **GET** /api/v1/addon-attachments/{addon_attachment_id} | show addon attachment |
| [**list_addon_attachments**](AddonAttachmentsApi.md#list_addon_attachments) | **GET** /api/v1/addon-attachments | list addon attachments |


## create_addon_attachment

> <AddonAttachment> create_addon_attachment(opts)

create addon attachment

Attach an addon to an app

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

api_instance = BuildClient::AddonAttachmentsApi.new
opts = {
  create_addon_attachment_request: BuildClient::CreateAddonAttachmentRequest.new({addon: 'addon_example', app: 'app_example'}) # CreateAddonAttachmentRequest | 
}

begin
  # create addon attachment
  result = api_instance.create_addon_attachment(opts)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->create_addon_attachment: #{e}"
end
```

#### Using the create_addon_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddonAttachment>, Integer, Hash)> create_addon_attachment_with_http_info(opts)

```ruby
begin
  # create addon attachment
  data, status_code, headers = api_instance.create_addon_attachment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddonAttachment>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->create_addon_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_addon_attachment_request** | [**CreateAddonAttachmentRequest**](CreateAddonAttachmentRequest.md) |  | [optional] |

### Return type

[**AddonAttachment**](AddonAttachment.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_addon_attachment

> <AddonAttachment> delete_addon_attachment(addon_attachment_id)

delete addon attachment

Detach an addon from an app

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

api_instance = BuildClient::AddonAttachmentsApi.new
addon_attachment_id = 'addon_attachment_id_example' # String | Addon attachment ID

begin
  # delete addon attachment
  result = api_instance.delete_addon_attachment(addon_attachment_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->delete_addon_attachment: #{e}"
end
```

#### Using the delete_addon_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddonAttachment>, Integer, Hash)> delete_addon_attachment_with_http_info(addon_attachment_id)

```ruby
begin
  # delete addon attachment
  data, status_code, headers = api_instance.delete_addon_attachment_with_http_info(addon_attachment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddonAttachment>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->delete_addon_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon_attachment_id** | **String** | Addon attachment ID |  |

### Return type

[**AddonAttachment**](AddonAttachment.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_addon_attachment

> <AddonAttachment> get_addon_attachment(addon_attachment_id)

show addon attachment

Get info about an addon attachment

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

api_instance = BuildClient::AddonAttachmentsApi.new
addon_attachment_id = 'addon_attachment_id_example' # String | Addon attachment ID

begin
  # show addon attachment
  result = api_instance.get_addon_attachment(addon_attachment_id)
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->get_addon_attachment: #{e}"
end
```

#### Using the get_addon_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddonAttachment>, Integer, Hash)> get_addon_attachment_with_http_info(addon_attachment_id)

```ruby
begin
  # show addon attachment
  data, status_code, headers = api_instance.get_addon_attachment_with_http_info(addon_attachment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddonAttachment>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->get_addon_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon_attachment_id** | **String** | Addon attachment ID |  |

### Return type

[**AddonAttachment**](AddonAttachment.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_addon_attachments

> <Array<AddonAttachment>> list_addon_attachments

list addon attachments

List all addon attachments

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

api_instance = BuildClient::AddonAttachmentsApi.new

begin
  # list addon attachments
  result = api_instance.list_addon_attachments
  p result
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->list_addon_attachments: #{e}"
end
```

#### Using the list_addon_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddonAttachment>>, Integer, Hash)> list_addon_attachments_with_http_info

```ruby
begin
  # list addon attachments
  data, status_code, headers = api_instance.list_addon_attachments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddonAttachment>>
rescue BuildClient::ApiError => e
  puts "Error when calling AddonAttachmentsApi->list_addon_attachments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AddonAttachment&gt;**](AddonAttachment.md)

### Authorization

[bearer](../README.md#bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

