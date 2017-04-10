class GamesController < ApplicationController
  def new

  end

  def create
    @game=Game.new
    @game.title=params[:title]
    @game.rules=params[:rules]
    @game.number=params[:number]
    @game.save
    redirect_to game_path(@game.id)
  end

  def index
    @games=Game.all
  end

  def show
    @game=Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update_game
   @game=Game.find(params[:id])
   @game.title=params[:title]
   @game.rules=params[:rules]
   @game.number=params[:number]
   @game.save
   redirect_to game_path(@game.id)
  end

  def destroy
    @game=Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end
end
