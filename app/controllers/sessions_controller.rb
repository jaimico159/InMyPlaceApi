# frozen_string_literal: true

class SessionsController < ApplicationController
  # POST -> email, password
  # /sessions/validate
  def validate
    user = User.find_by_email(params[:email])

    if user&.valid_password?(params[:password])
      json_response(user)
    else
      json_response({}, :unauthorized)
    end
  end
end
