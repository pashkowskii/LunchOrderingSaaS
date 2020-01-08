# frozen_string_literal: true

module Admin
  class InfobaseController < ApplicationController
    def index
      authorize current_user
      @infobase_facade = Infobase::IndexFacade.new
    end
  end
end
