# frozen_string_literal: true

module Admin
  class InfobaseController < ApplicationController
    def index
      @users = User.all
    end
  end
end
