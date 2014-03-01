require 'cinch'

module HackBot::Plugins
  class Event
    include Cinch::Plugin

    match 'next meeting', react_on: :channel, method: :next_meeting

    def next_meeting(m)
      m.reply "The next meeting will be starting #{TIME} on #{DATE} at #{LOCATION}."
    end
  end
end
