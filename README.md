# omniauth-clickup

This is the OmniAuth strategy for authenticating to [ClickUp](https://www.clickup.com)

To use it, you'll need to create an Oauth Application in the Team settings page of Clickup web app and copy the Client ID and Client Secret.

## Installation

Add the line below to your Gemfile

```ruby
gem 'omniauth-clickup', git: "https://github.com/SupportBee/omniauth-clickup"
```

Create an OAuth application in ClickUp and obtain a Client ID and Client Secret

1. Sign into your ClickUp dashboard, visit the Settings > Integrations page and click on the "clickup API" integration
2. Click on "Create an App" link, enter a name for your App, enter `https://mywebsite.com/auth/click_up/callback` as the Redirect URL (replace `mywebsite.com` with the actual domain of your website when doing so) and click on "Create App"
3. Copy the Client ID and Client Secret

Create an initializer `config/initializers/omniauth.rb` and add the lines below

```
use OmniAuth::Builder do
  provider :clickup, ENV['client_id'], ENV['client_secret']
end
```

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :clickup, Rails.application.secrets.clickup_oauth_client_id, Rails.application.secrets.clickup_oauth_client_secret
end
```

## Credits

This gem was authored by [SupportBee](https://supportbee.com/) to integrate ClickUp with their [Integrations Platform](https://github.com/SupportBee/SupportBee-Apps)

## License

[MIT License
