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
    return response["networks"]
  end

  def self.network(tag)
    #code http://api.citybik.es/v2/networks/capital-bikeshare
  end

  def self.network_stations(network_tag)
    #code http://api.citybik.es/v2/networks/capital-bikeshare?fields=stations
  end
end
