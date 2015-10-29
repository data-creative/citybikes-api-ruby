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

    context "when configured with the 'fields' option" do
      let(:request_options){{:fields => "id,name,href"}}

      it "should return a network object containing only the selected subset of fields" do
        response = CitybikesApi.networks(request_options)
        expect(response["networks"]).to be_kind_of(Array)
        expect(response["networks"][0].keys.sort).to eql(request_options[:fields].split(",").sort) #> ["company", "href", "id", "location", "name", "stations"]
      end
    end
  end

  describe '#network' do
    let(:network_id){"capital-bikeshare"}

    it "should return a network object, including a nested array of station objects" do
      response = CitybikesApi.network(network_id)
      expect(response["network"]).to be_kind_of(Hash)
      expect(response["network"]["stations"]).to be_kind_of(Array)
      expect(response["network"]["stations"][0]).to be_kind_of(Hash)
    end

    context "when configured with the 'fields' option" do
      let(:request_options){{:fields => "id,name,href"}}

      it "should return a network object containing only the selected subset of fields" do
        response = CitybikesApi.network(network_id, request_options)
        expect(response["network"]).to be_kind_of(Hash)
        expect(response["network"].keys.sort).to eql(request_options[:fields].split(",").sort) #> ["company", "href", "id", "location", "name", "stations"]
      end
    end
  end
end
