require "least_temperature"

RSpec.describe "LeastTemperature" do
  it "reads the content of the .dat file" do
    file_path = "weather.dat"
    file_reader = LeastTemperature.new(file_path)

    content = file_reader.read_file

    expect(content).to eq "Dy"
  end

  it "shows the least temperature" do
    file_path = "weather.dat"
    file_reader = LeastTemperature.new(file_path)

    characters = file_reader.lowest_value

    expect(characters).to eq "9"
  end
end
