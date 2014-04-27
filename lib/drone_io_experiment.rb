require "drone_io_experiment/version"
require "sinatra/base"

module DroneIOExperiment
  class App < Sinatra::Base
    get "/time" do
      DateTime.now.to_s
    end
  end
end
