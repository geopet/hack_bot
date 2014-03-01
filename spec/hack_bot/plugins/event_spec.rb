require 'spec_helper'

describe HackBot::Plugins::Event do
  include Cinch::Test

  before(:each) do
    @bot = make_bot(HackBot::Plugins::Event)
  end

  it 'prints information about the next meeting' do
    TIME = '6:00pm'
    DATE = 'January 1, 2014'
    LOCATION = 'Convivium Coworking'

    message = make_message(@bot, '!next meeting')
    expect(get_replies(message, :channel).first.text).to eq("The next meeting will be starting 6:00pm on January 1, 2014 at Convivium Coworking.")
  end
end
