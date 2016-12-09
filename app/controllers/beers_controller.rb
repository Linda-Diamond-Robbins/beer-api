class BeersController < ApplicationController

  def index
    @beers = Beer.all
    render 'index.json.jbuilder'
  end

  def create
    @beer = Beer.new(
      name: params[:name],
      style: params[:style], 
      alcohol: params[:alcohol], 
      ibu: params[:ibu]
      )
    @beer.save
    render 'show.json.jbuilder'
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @beer = Beer.find_by(id: :params[:id])

    render 'show.json.jbuilder'
  end

  def destroy
    @beer = Beer.find_by(id: :params[:id])
    
  end

end
