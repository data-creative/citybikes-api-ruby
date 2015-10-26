require "citybikes_api/version"
require "httparty"

module CitybikesApi
  BASE_URL = "http://api.citybik.es/v2"

  # Networks Endpoint
  #
  # @example CityBikesApi.networks
  #
  def self.networks
    response = HTTParty.get("#{BASE_URL}/networks")
  end

  def self.network(network_id)
    response = HTTParty.get("#{BASE_URL}/networks/#{network_id}")
  end
end
