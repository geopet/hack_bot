require 'cinch'
require 'hack_bot/event'
include HackBot::Event

module Cinch::Plugin::HackBot
  class ChannelInteraction
    include Cinch::Plugin

    match 'hello', use_prefix: false, react_on: :message, method: :hello
    match /nachos/i, use_prefix: false, react_on: :channel, method: :nachos
    match /who (.+)/i, react_on: :channel, method: :who_info
    match 'next meeting', react_on: :channel, method: :next_meeting

    def hello(m)
      user = m.user
      m.reply "Hello, #{user}! Welcome to #openhackabq!"
    end

    def nachos(m)
      user = m.user
      m.reply "I love nachos, too! I'll make you some, #{user}!"
    end

    def who_info(m, nick)
      user = User(nick)
      m.reply "#{nick} is #{user.realname}."
    end

    def next_meeting(m)
      m.reply "The next meeting will be starting #{TIME} on #{DATE} at #{LOCATION}."
    end
  end
end
