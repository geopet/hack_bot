require 'cinch'

class ChannelInteraction
  include Cinch::Plugin

  match 'hello', use_prefix: false, react_on: :message, method: :hello
  match /nachos/i, use_prefix: false, react_on: :channel, method: :nachos
  match /who (.+)/i, react_on: :channel, method: :who_info
  match 'next meeting', react_on: :channel, method: :next_meeting

  def hello(m)
    m.reply "Hello, #{m.user.nick}! Welcome to #openhackabq!"
  end

  def nachos(m)
    m.reply "I love nachos, too! I'll make you some, #{m.user.nick}!"
  end

  def who_info(m, nick)
    user = User(nick)
    m.reply "#{nick} is #{user.realname}."
  end

  def next_meeting(m)
    m.reply "The next meeting will be starting #{Event::EVENT_TIME} on #{Event::EVENT_DATE} at #{Event::EVENT_LOCATION}."
  end
end
