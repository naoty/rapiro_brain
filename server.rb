require "sinatra/base"

class Server < Sinatra::Base
  get "/move" do
    Brain.new.move
    200
  end

  get "/stop" do
    Brain.new.stop
    200
  end

  get "/blink" do
    Brain.new.blink
    200
  end
end
