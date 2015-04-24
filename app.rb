require('sinatra')
require('sinatra/reloader')
require('./lib/word_check')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @answer = params.fetch('first_word').word_check(params.fetch('word_list'))
  erb(:answer)
end
