require 'spec_helper'

describe HackBot::Plugins::ChannelInteraction do
  include Cinch::Test

  before(:each) do
    @bot = make_bot(HackBot::Plugins::ChannelInteraction)
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
