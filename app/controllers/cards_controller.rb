class CardsController < ApplicationController
  before_action :get_user

  def index
    @cards = Card.all.sort_by(&:date).reverse
  end

  def show
    @event = Card.find(params[:id])
  end

  def new
    @card = Card.new(date: Date.today.to_s)
    @card.build_location
  end

  def edit
    @card = Card.find(params[:id])
    if @card.location.nil?
      @card.build_location
    end
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      @user.cards << @card
      redirect_to cards_path
    else
      render :new
    end
  end

  def update
    @card = Card.find(params[:id])

    if @card.update_attributes(card_params)
      redirect_to cards_path
    else
      render :new
    end
  end

  def destroy
    Card.destroy(params[:id])
    redirect_to cards_path
  end

  private

  def get_user
    @user = current_user
  end

  def card_params
    params.require(:card).permit(
      :name,
      :description,
      :date,
      :lat,
      :lng,
      :cover_image,
      location_attributes: [
        :id,
        :geojson
      ]
    )
  end
end
