# frozen_string_literal: true

class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.get(current_user.id, params[:id])
  end
end
