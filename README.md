Horntell SDK for Ruby
====================

This SDK allows you to easily integrate Horntell in your Ruby applications.

## Requirements
**Ruby 1.9.2 and later.**

**Gems: rest-client, json**

## Installation
You don't need this source code unless you want to modify the gem. If you just want to use the Horntell Ruby SDK, you should run:

```
gem install horntell
```

If you want to build the gem from source, run this:

```
gem build horntell.gemspec
```

## Bundler
If you are installing via bundler, you should be sure to use the https rubygems source in your Gemfile, as any gems fetched over http could potentially be compromised in transit and alter the code of gems fetched securely over https:

```ruby
source 'https://rubygems.org'

gem 'horntell'
```

And then execute:

```
bundle install
```

## Getting Started

You need to `init`ialize the SDK with the app's key and secret, which you can find in your account at [http://app.horntell.com](http://app.horntell.com). Sample usage looks like this.

```ruby
Horntell::init('YOUR_APP_KEY', 'YOUR_APP_SECRET');
Horntell::Profile.create({
	:uid => "1337",
	:first_name => "John",
	:last_name => "Doe",
	:signedup_at => 1383350400
})

```

## Documentation

Please see [http://docs.horntell.com/api](http://docs.horntell.com/api/?ruby) for up-to-date documentation.
