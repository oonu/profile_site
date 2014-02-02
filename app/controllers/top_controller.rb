class TopController < ApplicationController
  def index
    @agents = Agent.find(:all)
  end

  def show
    @agent  = Agent.find(params[:id])
  end
end
