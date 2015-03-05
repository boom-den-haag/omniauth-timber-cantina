# Omniauth::Timber::Cantina

OmniAuth strategy to allow single sign on using the Timber Cantina application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-timber-cantina'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-timber-cantina

## Usage

To use this with Devise:

1. Add `:omniauthable` to the Devise user
2. Setup something like `config.omniauth :timber_cantina, ENV['TIMBER_CANTINA_APP_ID'], ENV['TIMBER_CANTINA_APP_SECRET']` in the devise initializer
3. Implement `timber_cantina` method in `Devise::OmniauthCallbacksController`

## Credits

Much of this is borrowed from:

* https://github.com/intridea/omniauth-github
* https://github.com/doorkeeper-gem/doorkeeper/wiki/Create-a-OmniAuth-strategy-for-your-provider

## Contributing

1. Fork it ( https://github.com/johankok/omniauth-timber-cantina/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
