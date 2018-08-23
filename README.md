# omniauth-clickup

This is the OmniAuth strategy for authenticating to [ClickUp](https://www.clickup.com). 
To use it, you'll need to create an Oauth Application in the Team settings page of Clickup web app and copy the Client ID and Client Secret.

## Installation

```ruby
gem 'omniauth-clickup', git: "https://github.com/SupportBee/omniauth-clickup"
```

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :clickup, ENV['client_id'], ENV['client_secret']
end
```

## Credits

This gem was authored by [SupportBee](https://supportbee.com/) to integrate ClickUp with their [Integrations Platform](https://github.com/SupportBee/SupportBee-Apps).

## License

[MIT License](https://github.com/SupportBee/omniauth-clickup/blob/master/LICENSE.txt)
