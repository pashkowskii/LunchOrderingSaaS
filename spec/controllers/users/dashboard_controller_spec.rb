# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::DashboardController, type: :controller do
  let(:user) { create(:user) }

  describe 'index' do
    it 'should show dashboard page' do
      sign_in user
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
