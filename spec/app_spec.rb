require "drone_io_experiment"

describe DroneIOExperiment::App do
  let(:app) { DroneIOExperiment::App.new }

  it "gives the current time" do
    expected_time = DateTime.now

    Timecop.freeze(expected_time) do
      get "/time"
    end

    expect(last_response.body).to eq(expected_time.to_s)
  end
end
