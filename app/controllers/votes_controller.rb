class VotesController < ApplicationController
  def new
    # @vote = Vote.new
  end

  def create
    @vote = Vote.new
    @vote.save
    redirect_to menus_path
  end

  def vote_params
    params.require(:vote).permit()
  end
end
