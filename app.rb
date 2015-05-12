require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/survey')
require('./lib/question')
require('pg')


get('/') do
  @questions = Question.all
  erb(:index)
end

post('/questions') do
  erb(:questions_edit)
end

# post('/') do
#   new_question = params.fetch('question')
#   new_survey = Survey.new({:name => new_question})
#   new_survey.save
#   @lists = List.all()
#   erb(:index)
# end

get('/questions/:id/edit') do
  @question = Question.find(params.fetch("id").to_i())
  erb(:question_edit)
end

patch("questions/:id") do
  name = params.fetch("name")
  #@name = Survey.all
  @name = Question.find(params.fetch("id").to_i())
  @name.update({:name => name})
  @names = Question.all()
  erb(:index)
end
