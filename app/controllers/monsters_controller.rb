class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      flash[:success] = "モンスターが作成されました。"
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private

    def monster_params
      params.require(:monster).permit(:name, :subtype, :level, :money, :power, :life, :text)
    end

end
