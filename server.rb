require "sinatra/base"
require "./brain"

class Server < Sinatra::Base
  before do
    @brain = Brain.new
  end

  after do
    @brain.die
    200
  end

  get "/move" do
    @brain.move(params[:command]) if params[:command]
  end

  get "/forward" do
    @brain.forward
  end

  get "/stop" do
    @brain.stop
  end
end
