class TopController < ApplicationController
  def index
    @agents = Agent.find(:all)
  end

  def show
    @agent  = Agent.find(params[:id])
  end

  def icon
    @agent  = Agent.find(params[:id])
    send_data(@agent.icon, type: @agent.icon_content_type, disposition: :inline)
  end

end
