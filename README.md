# HackBot

[![Gem Version](https://badge.fury.io/rb/hack_bot.png)](http://badge.fury.io/rb/hack_bot) [![Build Status](https://travis-ci.org/geopet/hack_bot.png?branch=master)](https://travis-ci.org/geopet/hack_bot)

The HackBot gem is a project for
[OpenHackABQ](http://openhack.github.io/albuquerque/), but is open enough to be
used by anyone.

## Installation

Add this line to your application's Gemfile:

    gem 'hack_bot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hack_bot

## Usage

Example file to run hack_bot looks like this:

```ruby
require 'hack_bot'

module Event
  EVENT_TIME = '6:00pm'
  EVENT_DATE = 'Thursday March 27'
  EVENT_LOCATION = 'Convivium Coworking (https://goo.gl/34F40H)'
end

HackBot.start('irc.freenode.org',
              ["#openhackabq", "#geopet"],
              'openhackabq_bot',
              'Hack Bot',
              'hackbot')
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/hack_bot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
