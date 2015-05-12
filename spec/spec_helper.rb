ENV['RACK_ENV'] = 'test'

require('rspec')
require('./lib/survey')
require('./lib/question')
require('pg')
require('pry')

RSpec.configure do |config|
  config.after(:each) do
    Question.all().each() do |question|
      question.destroy()
    end
  end
end
