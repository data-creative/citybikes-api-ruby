# CitybikesApi - Ruby

A ruby interface to the [CityBikes API](http://api.citybik.es/v2/). Includes endpoints for bike-share network and station data.

## Installation

Add `gem 'citybikes_api', '~> 2.0'` to Gemfile and run `bundle install`. Or install with:

```` sh
gem install citybikes_api
````

## Usage

Get a list of all bike-share networks.

```` rb
CitybikesApi.networks
````

Find a bike-share network by its `tag`.

```` rb
CitybikesApi.network(tag)
````

List all stations for a given network tag.

```` rb
CitybikesApi.network_stations(network_tag)
````

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
