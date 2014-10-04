class DebatesController < ApplicationController
  def index
  end

  def show
    @debate = Debate.find(params[:id])
  end
end
