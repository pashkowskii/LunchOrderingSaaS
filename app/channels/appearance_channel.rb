# frozen_string_literal: true

class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    interlocutor = User.where(id: current_user.id).first
    return unless interlocutor

    interlocutor.update_attributes(online: true)
    stream_from 'appearance_user'
  end

  def unsubscribed
    interlocutor = User.where(id: current_user.id).first
    return unless interlocutor

    interlocutor.update_attributes(online: false)
  end
end