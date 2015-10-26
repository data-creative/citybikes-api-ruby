require "citybikes_api/version"
require "httparty"

# A collection of methods to facilitate citybikes api requests.
module CitybikesApi
  # The base url for all endpoint requests.
  BASE_URL = "http://api.citybik.es/v2"

  # Networks Endpoint
  #
  # @example CityBikesApi.networks
  #
  def self.networks
    response = HTTParty.get("#{BASE_URL}/networks")
  end

  # Network Endpoint
  #
  # @param [String] network_id The unique bike-share network identifier assigned by citybikes.
  #
  # @example CityBikesApi.network("capital-bikeshare")
  #
  def self.network(network_id)
    response = HTTParty.get("#{BASE_URL}/networks/#{network_id}")
  end
end
