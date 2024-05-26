=begin
#Build.io API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DefaultApi)
    end
  end

  # unit tests for api_v1_apps_app_id_or_name_config_vars_get
  # list all config-vars
  # @param app_id_or_name app id or name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_v1_apps_app_id_or_name_config_vars_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_apps_app_id_or_name_config_vars_patch
  # set or update config-vars
  # @param app_id_or_name app id or name
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :request_body 
  # @return [nil]
  describe 'api_v1_apps_app_id_or_name_config_vars_patch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_apps_id_builds_post
  # create build
  # @param id app id or name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_v1_apps_id_builds_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_apps_id_dynos_delete
  # restart dynos
  # @param id app id or name
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_v1_apps_id_dynos_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_me_get
  # identity
  # @param [Hash] opts the optional parameters
  # @return [ApiV1MeGet200Response]
  describe 'api_v1_me_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_namespaces_post
  # create a namespace
  # Create a namespace
  # @param [Hash] opts the optional parameters
  # @option opts [ApiV1NamespacesPostRequest] :api_v1_namespaces_post_request 
  # @return [nil]
  describe 'api_v1_namespaces_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for api_v1_oidc_login_get
  # kubernetes oidc-login
  # @param [Hash] opts the optional parameters
  # @option opts [String] :region 
  # @return [ApiV1OidcLoginGet200Response]
  describe 'api_v1_oidc_login_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for app
  # show app
  # @param id app id or name
  # @param [Hash] opts the optional parameters
  # @return [App]
  describe 'app test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for apps
  # list apps
  # List all apps
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_id team id or name
  # @return [Array<App>]
  describe 'apps test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for namespace
  # show namespace
  # Show a namespace
  # @param id Namespace name or ID
  # @param [Hash] opts the optional parameters
  # @return [Namespace]
  describe 'namespace test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for namespaces
  # list all namespaces
  # List all namespaces
  # @param [Hash] opts the optional parameters
  # @return [Array<Namespace>]
  describe 'namespaces test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for team
  # show team
  # Show a team
  # @param id Team name or ID
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'team test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for teams
  # list all teams
  # List all teams
  # @param [Hash] opts the optional parameters
  # @return [Array<Team>]
  describe 'teams test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
