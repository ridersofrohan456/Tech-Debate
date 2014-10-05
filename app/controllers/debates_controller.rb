class DebatesController < ApplicationController
  def index
    @debates = Debate.all
  end

  def show
    @debate = Debate.find(params[:id])
  end
end
