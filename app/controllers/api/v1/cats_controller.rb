class Api::V1::CatsController < ApplicationController
  before_action :find_cat, only: [:update]
  def index
    @cats = Cat.all
    render json: @cats
  end

  def update
    @cat.update(cat_params)
    if @cat.save
      render json: @cat, status: :accepted
    else
      render json: { errors: @cat.errors.full_messages }, status: :unprocessible_entity
    end
  end


  private

  def cat_params
    params.permit(:image)
  end

  def find_cat
    @cat = Cat.find(params[:id])
  end
end
