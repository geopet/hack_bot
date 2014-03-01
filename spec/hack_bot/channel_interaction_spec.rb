require 'spec_helper'

describe Cinch::Plugin::HackBot::ChannelInteraction do
  include Cinch::Test
  include HackBot::Event

  before(:each) do
    @bot = make_bot(Cinch::Plugin::HackBot::ChannelInteraction)
  end

  it 'prints information about the next meeting' do
    TIME = '6:00pm'
    DATE = 'January 1, 2014'
    LOCATION = 'Convivium Coworking'

    message = make_message(@bot, '!next meeting')
    expect(get_replies(message, :channel).first.text).to eq("The next meeting will be starting 6:00pm on January 1, 2014 at Convivium Coworking.")
  end

  it 'replies to a lone hello' do
    message = make_message(@bot, 'hello', { :nick => 'foo' })
    expect(get_replies(message).first.text).to eq('Hello, foo! Welcome to #openhackabq!')
  end

  it 'likes nachos like everyone else does' do
    message = make_message(@bot, 'nachos', { :nick => 'foo' })
    expect(get_replies(message, :channel).first.text).to eq("I love nachos, too! I'll make you some, foo!")
  end

  it 'will inform you of a who request' do
    pending "Uncertain about the best way to test this."
  end
end
