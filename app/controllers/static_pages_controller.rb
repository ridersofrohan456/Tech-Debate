class StaticPagesController < ApplicationController
  def home
    @debates = Debate.all
    @current_debate = Debate.first
  end
end
