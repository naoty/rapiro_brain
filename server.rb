require "sinatra/base"
require "./brain"

class Server < Sinatra::Base
  before do
    @brain = Brain.new
  end

  get "/move" do
    @brain.move
    @brain.die
    200
  end

  get "/stop" do
    @brain.stop
    @brain.die
    200
  end

  get "/blink" do
    @brain.blink
    @brain.die
    200
  end
end
