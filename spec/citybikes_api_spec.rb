require 'spec_helper'

describe CitybikesApi do
  it 'has a version number' do
    expect(CitybikesApi::VERSION).not_to be nil
  end

  describe '#networks' do
    it "should return an array of network objects" do
      response = CitybikesApi.networks
      expect(response["networks"]).to be_kind_of(Array)
      expect(response["networks"][0]).to be_kind_of(Hash)
    end
  end

  describe '#network' do
    let(:network_id){"capital-bikeshare"}

    it "should return a network object" do
      response = CitybikesApi.network(network_id)
      expect(response["network"]).to be_kind_of(Hash)
    end

    it "should return an array of station objects" do
      response = CitybikesApi.network(network_id)
      expect(response["network"]["stations"]).to be_kind_of(Array)
      expect(response["network"]["stations"][0]).to be_kind_of(Hash)
    end
  end
end
