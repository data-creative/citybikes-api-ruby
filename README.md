# CityBikes API - Ruby :bike: :bike: :bike:

A ruby interface to the [CityBikes API](http://api.citybik.es/v2/) v2.
 Returns data about bike-share networks and stations.
 Includes options to customize API requests.

[![Gem Version](https://badge.fury.io/rb/citybikes_api.svg)](https://badge.fury.io/rb/citybikes_api)

## Installation

Add `gem 'citybikes_api', '~> 2.0'` to Gemfile and run `bundle install`. Or install with:

```` sh
gem install citybikes_api
````

## Usage

### Requests

#### Networks Endpoint

List all bike-share networks.

```` rb
response = CitybikesApi.networks
puts response["networks"] #=> returns an Array of Hash objects
````

#### Network Endpoint

Find a bike-share network by its CityBikes identifier.

```` rb
network_id = "capital-bikeshare"
response = CitybikesApi.network(network_id)
puts response["network"] #=> returns a Hash object
````

### Request Options

Customize any network request by passing URL parameters.

```` rb
request_options = {:fields => "id,name,href"}
response = CitybikesApi.networks(request_options)
puts response["networks"] #=> returns an Array of Hash objects, each of which should only contain the requested fields/attributes
````

```` rb
network_id = "capital-bikeshare"
request_options = {:fields => "id,name,href"}
response = CitybikesApi.network(network_id, request_options)
puts response["network"] #=> returns a Hash object which should only contain the requested fields/attributes
````

See [CityBikes documentation](http://api.citybik.es/v2/#Syntax) for more info about field-filtering.

## Contributing

Browse existing [issues](https://github.com/data-creative/citybikes-api-ruby/issues) or create a new issue to communicate bugs, desired features, etc.

After forking the repo and pushing your changes, create a pull request referencing the applicable issue(s).

### Developing

After checking out the repo, run `bin/setup` to install dependencies.

### Testing

Run `rake rspec` or `bundle exec rspec spec/` to run the tests.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

### Releasing

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## [License](LICENSE.txt)
