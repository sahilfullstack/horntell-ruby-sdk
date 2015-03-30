Horntell SDK for Ruby
====================

This SDK allows you to easily integrate Horntell in your Ruby applications.

## Requirements

*Ruby 1.9.2 and later.

*Rest Client, json

This package depends on Rest client, which has the following additional requirements.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'horntell'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install horntell

## Getting Started

You need to `init`ialize the SDK with the app's key and secret, which you can find in your account at [http://app.horntell.com](http://app.horntell.com). Sample usage looks like this.

```ruby
Horntell::init('YOUR_APP_KEY', 'YOUR_APP_SECRET');
Horntell::Profile.create({
	:uid => "47000",
	:first_name => "gobar singh",
	:last_name => "Doe",
	:email => "john@example.com",
	:signedup_at => "843478374"
})

```

## Documentation

Please see [http://docs.horntell.com/api](http://docs.horntell.com/api/?ruby) for up-to-date documentation.
