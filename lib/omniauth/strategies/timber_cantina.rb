require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Basic authentication strategy for Timber Cantina
    class TimberCantina < OmniAuth::Strategies::OAuth2
      option :name, :timber_cantina

      option :client_options,
             site: 'https://cantina.budh.nl',
             authorize_url: '/oauth/authorize'

      uid { raw_info['id'] }

      info do
        {
          email: raw_info['email'],
          name: raw_info['name'],
          api_access_enabled: raw_info['api_access_enabled'],
          application_permissions: raw_info['application_permissions']
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
