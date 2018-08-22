require 'spec_helper'

describe OmniAuth::Strategies::TimberCantina do
  subject { OmniAuth::Strategies::TimberCantina.new({}) }


  context 'client options' do
    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq 'https://cantina.budh.nl'
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq '/oauth/authorize'
    end

    describe 'should be able to customize' do
      let(:custom_site) { 'http://localhost:3000' }
      let(:custom_authorize_url) { '/admin_users/oauth/authorize' }
      let(:custom) do
        OmniAuth::Strategies::TimberCantina.new('KEY', 'SECRET',
                                                client_options: {
                                                  site: custom_site,
                                                  authorize_url: custom_authorize_url
                                                })
      end

      it 'for site' do
        expect(custom.options.client_options.site).to eq custom_site
      end

      it 'for authorize url' do
        expect(custom.options.client_options.authorize_url).to eq custom_authorize_url
      end
    end
  end
end
