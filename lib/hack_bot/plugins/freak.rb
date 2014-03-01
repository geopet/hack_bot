require 'cinch'

module Cinch::Plugin::HackBot
  class Freak
    include Cinch::Plugin
    on :message, /^!freak (.+)/ do |m, nick|
      debug 'Freak is active'
      User(geopet).send "You know I'm watching you right now, right, #{nick}?"
      User(geopet).send "I know what you did last summer"
    end
  end
end
