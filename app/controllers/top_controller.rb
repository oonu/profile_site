class TopController < ApplicationController
  def index
    @agents = Agent.find(:all)
  end
end
