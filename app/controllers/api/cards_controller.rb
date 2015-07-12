class Api::CardsController < ApplicationController
  def index
    render json: Card.all
  end

  def create
    card = Card.create!(safe_params)
    render json: card, status: 201
  end

  def update
    card.update_attributes(safe_params)
    render nothing: true, status: 204
  end

  def safe_params
    params.require(:card).permit(:name, :location, :date, :description)
  end
end
