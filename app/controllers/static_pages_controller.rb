class StaticPagesController < ApplicationController
  def home
    @debates = Debate.all
    @current_debate = Debate.first
  end

  def live_debate
    @random_user = User.all.sample
    @random_debate = Debate.all.sample
  end
end
