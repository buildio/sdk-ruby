=begin
#Build.io API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'cgi'

module BuildClient
  class PipelinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # get a specific pipeline
    # Retrieves details for a specific pipeline
    # @param pipeline_id_or_name [String] Pipeline ID or Name
    # @param [Hash] opts the optional parameters
    # @return [Pipeline]
    def get_pipeline(pipeline_id_or_name, opts = {})
      data, _status_code, _headers = get_pipeline_with_http_info(pipeline_id_or_name, opts)
      data
    end

    # get a specific pipeline
    # Retrieves details for a specific pipeline
    # @param pipeline_id_or_name [String] Pipeline ID or Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
    def get_pipeline_with_http_info(pipeline_id_or_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelinesApi.get_pipeline ...'
      end
      # verify the required parameter 'pipeline_id_or_name' is set
      if @api_client.config.client_side_validation && pipeline_id_or_name.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id_or_name' when calling PipelinesApi.get_pipeline"
      end
      # resource path
      local_var_path = '/api/v1/pipelines/{pipeline_id_or_name}'.sub('{' + 'pipeline_id_or_name' + '}', CGI.escape(pipeline_id_or_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Pipeline'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"PipelinesApi.get_pipeline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#get_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # list apps in a pipeline
    # A list of applications in the pipeline.
    # @param pipeline_id_or_name [String] Pipeline ID or Name
    # @param [Hash] opts the optional parameters
    # @return [Array<App>]
    def list_pipeline_apps(pipeline_id_or_name, opts = {})
      data, _status_code, _headers = list_pipeline_apps_with_http_info(pipeline_id_or_name, opts)
      data
    end

    # list apps in a pipeline
    # A list of applications in the pipeline.
    # @param pipeline_id_or_name [String] Pipeline ID or Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<App>, Integer, Hash)>] Array<App> data, response status code and response headers
    def list_pipeline_apps_with_http_info(pipeline_id_or_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelinesApi.list_pipeline_apps ...'
      end
      # verify the required parameter 'pipeline_id_or_name' is set
      if @api_client.config.client_side_validation && pipeline_id_or_name.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline_id_or_name' when calling PipelinesApi.list_pipeline_apps"
      end
      # resource path
      local_var_path = '/api/v1/pipelines/{pipeline_id_or_name}/apps'.sub('{' + 'pipeline_id_or_name' + '}', CGI.escape(pipeline_id_or_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<App>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"PipelinesApi.list_pipeline_apps",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#list_pipeline_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # list pipelines
    # Lists all pipelines accessible to the current user
    # @param [Hash] opts the optional parameters
    # @return [Array<Pipeline>]
    def list_pipelines(opts = {})
      data, _status_code, _headers = list_pipelines_with_http_info(opts)
      data
    end

    # list pipelines
    # Lists all pipelines accessible to the current user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Pipeline>, Integer, Hash)>] Array<Pipeline> data, response status code and response headers
    def list_pipelines_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PipelinesApi.list_pipelines ...'
      end
      # resource path
      local_var_path = '/api/v1/pipelines'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Pipeline>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer']

      new_options = opts.merge(
        :operation => :"PipelinesApi.list_pipelines",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#list_pipelines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
