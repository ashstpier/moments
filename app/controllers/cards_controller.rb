class CardsController < ApplicationController

  def index
    @cards = Card.all.sort_by(&:date).reverse
  end

  def show
    @event = Card.find(params[:id])
    render :layout => 'event'
  end

  def new
    @card = Card.new
    @card.locations.build
  end

  def edit
    @card = Card.find(params[:id])
    if @card.locations.empty?
      @card.locations.build
    end
  end

  def create
    @card = Card.new(card_params)

    if @card.save
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

  def card_params
    params.require(:card).permit(
      :name,
      :description,
      :date,
      :lat,
      :lng,
      :cover_image,
      locations_attributes: [
        :id,
        :name,
        :lat,
        :lng
      ]
    )
  end
end
