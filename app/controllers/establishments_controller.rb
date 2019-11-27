# frozen_string_literal: true

class EstablishmentsController < ApplicationController
  # get ->
  # /establishments
  def index
    json_response(Establishments.all)
  end

  # post -> params
  # /establishments
  def create
    establishment = Establishment.new(establishment_params)

    if establishment.save(params)
      json_response(establishment)
    else
      json_response({ error: 'Error guardando establecimiento' }, :bad_request)
    end
  end

  # get ->
  # /establishments/:id
  def show
    establishment = Establishment.find(params[:id])
    if establishment.present?
      json_response(establishment)
    else
      json_response({ error: 'Establecimiento no encontrado' }, :unprocessable_entity)
    end
  end

  # post -> params
  # /establishments/update
  def update
    establishment = Establishment.find(params[:id])

    if establishment.blank?
      json_response({ error: 'Establecimiento no encontrado' }, :unprocessable_entity)
      return
    end

    if establishment.update(params)
      json_response(establishment)
    else
      json_response({ error: 'Error guardando establecimiento' }, :bad_request)
    end
  end

  # delete
  # /establishments/:id
  def destroy
    establishment = Establishment.find(params[:id])
    if establishment.destroy
      json_response(establishment)
    else
      json_response({ error: 'Establecimiento falló en ser eliminado' }, :bad_request)
    end
  end

  private

  def establishment_params
    params.fetch(:establishment, {}).permit(:name, :lat, :lng, :description, :establishment_status)
  end
end
