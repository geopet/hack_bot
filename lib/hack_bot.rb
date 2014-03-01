require 'cinch'
require 'hack_bot/version'
require 'hack_bot/plugins/channel_interaction'
require 'hack_bot/plugins/event'

module HackBot
  def self.start(server, channels, nick, realname, user)
    bot = Cinch::Bot.new do
      configure do |c|
        c.server = server
        c.channels = channels
        c.nick = nick
        c.realname = realname
        c.user = user
        c.plugins.plugins = [HackBot::Plugins::ChannelInteraction,
                             HackBot::Plugins::Event]
      end
    end

    bot.start
  end
end
