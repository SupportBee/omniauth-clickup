require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ClickUp < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "click_up"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
          site: "https://api.clickup.com/api/v1/",
          authorize_url: "https://app.clickup.com/api",
          token_url: "https://api.clickup.com/api/v1/oauth/token"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      def request_phase
        super
      end

      def callback_phase
        super
      end

      uid do
        raw_info['user']['id']
      end

      info do
        raw_info
      end

      extra do
        raw_info
      end

      def raw_info
        access_token.options[:header_format] = "%s"
        @raw_info ||= JSON.load(access_token.get('user').body)
      end
    end
  end
end