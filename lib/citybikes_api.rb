require "citybikes_api/version"
require "httparty"

# A collection of methods to facilitate citybikes api requests.
module CitybikesApi
  # The base url for all endpoint requests.
  BASE_URL = "http://api.citybik.es/v2"

  # Networks Endpoint
  #
  # @param [Hash] options An object of named URL parameters to pass along with the request.
  # @param [Hash] options [String] :field A comma-separated string of network object attributes.
  #
  # @example CityBikesApi.networks
  # @example CityBikesApi.networks({:fields => "id,name,href"})
  #
  def self.networks(options = {})
    HTTParty.get("#{BASE_URL}/networks", :query => options)
  end

  # Network Endpoint
  #
  # @param [String] network_id The unique bike-share network identifier assigned by citybikes.
  # @param [Hash] options An object of named URL parameters to pass along with the request.
  # @param [Hash] options [String] :field A comma-separated string of network object attributes.
  #
  # @example CityBikesApi.network("capital-bikeshare")
  # @example CityBikesApi.network("capital-bikeshare", {:fields => "id,name,href"})
  #
  def self.network(network_id, options = {})
    HTTParty.get("#{BASE_URL}/networks/#{network_id}", :query => options)
  end
end
