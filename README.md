# KeyVortex::Contract

Adapters built for [KeyVortex](https://github.com/lambda-Null/key-vortex/) must conform to a common set of behaviors in order to play nicely together. This gem provides [shared examples](https://rubydoc.info/gems/key_vortex-contract/KeyVortex/Contract) that can be included in your tests to verify that you support these behaviors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'key_vortex-contract'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install key_vortex-contract

## Usage

Within the RSpec tests for your adapter subclass, you can include the contract like this:

```ruby
require "key_vortex/constract"

RSpec.describe KeyVortex::Adapter::SomethingAwesome do
  subject { KeyVortex::Adapter::SomethingAwesome.new() }
  it_behaves_like "an adapter"
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/key_vortex-contract. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/key_vortex-contract/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the KeyVortex::Contract project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/key_vortex-contract/blob/main/CODE_OF_CONDUCT.md).
