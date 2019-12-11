# frozen_string_literal: true

class NewsController < ApplicationController
  # get ->
  # /establishments
  def index
    news = New.all
    json_response(data: news.as_json(include: :establishment))
  end

  # post -> params
  # /establishments
  def create
    establishment_new = New.new(new_params)

    if establishment_new.save!
      json_response(establishment_new)
    else
      json_response({ error: 'Error guardando noticia de establecimiento' }, :bad_request)
    end
  end

  # get ->
  # /establishments/:id
  def show
    user = User.find(params[:user_id])
    establishment = user.establishments.where(id: params[:id]).first
    if establishment.present?
      json_response(establishment)
    else
      json_response({ error: 'Establecimiento no encontrado' }, :unprocessable_entity)
    end
  end

  # post -> params
  # /establishments/:id
  def update
    establishment_new = New.find(params[:id])

    if establishment_new.blank?
      json_response({ error: 'Noticia de establecimiento no encontrado' }, :unprocessable_entity)
      return
    end

    if establishment_new.update(establishment_params)
      json_response(establishment_new)
    else
      json_response({ error: 'Error guardando noticia de establecimiento' }, :bad_request)
    end
  end

  # delete
  # /establishments/:id
  def destroy
    establishment_new = New.find(params[:id])
    if establishment_new.destroy
      json_response(establishment_new)
    else
      json_response({ error: 'Noticia de establecimiento falló en ser eliminado' }, :bad_request)
    end
  end

  private

  def new_params
    params.fetch(:new, {}).permit(:title, :description, :published_at, :photo_url,
                                  :establishment_id)
  end
end
