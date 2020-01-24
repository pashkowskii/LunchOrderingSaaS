# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::InfobaseController, type: :controller, js: true do
  let(:user) { create(:user) }

  describe 'index' do
    it 'should index infobase page' do
      sign_in user
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
