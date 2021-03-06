# frozen_string_literal: true

class UsersController < ApplicationController
  # get ->
  # /establishments
  def index
    json_response(User.all)
  end

  # # post -> params
  # # /establishments

  # # get ->
  # # /establishments/:id
  # def show
  #   user = User.find(params[:user_id])
  #   establishment = user.establishments.where(id: params[:id]).first
  #   if establishment.present?
  #     json_response(establishment)
  #   else
  #     json_response({ error: 'Establecimiento no encontrado' }, :unprocessable_entity)
  #   end
  # end

  # # post -> params
  # # /establishments/:id
  # def update
  #   user = User.find(params[:user_id])
  #   establishment = user.establishments.where(id: params[:id]).first

  #   if establishment.blank?
  #     json_response({ error: 'Establecimiento no encontrado' }, :unprocessable_entity)
  #     return
  #   end

  #   if establishment.update(establishment_params)
  #     json_response(establishment)
  #   else
  #     json_response({ error: 'Error guardando establecimiento' }, :bad_request)
  #   end
  # end

  # # delete
  # # /establishments/:id
  # def destroy
  #   user = User.find(params[:user_id])
  #   establishment = user.establishments.where(id: params[:id]).first
  #   if establishment.destroy
  #     json_response(establishment)
  #   else
  #     json_response({ error: 'Establecimiento falló en ser eliminado' }, :bad_request)
  #   end
  # end

  # private

  # def establishment_params
  #   params.fetch(:establishment, {}).permit(:name, :lat, :lng, :description, :establishment_status)
  # end
end
