require "hack_bot/version"
require 'cinch'
require 'hack_bot/channel_interaction'

module HackBot
  def self.start(server, channels, nick, realname, user)
    bot = Cinch::Bot.new do
      configure do |c|
        c.server = server
        c.channels = channels
        c.nick = nick
        c.realname = realname
        c.user = user
        c.plugins.plugins = [ChannelInteraction]
      end
    end

    bot.start
  end
end
