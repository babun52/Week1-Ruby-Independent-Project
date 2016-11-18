require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/count') do
  @result = (params.fetch('string')).word_count(params.fetch('word'))
  erb(:word_count)
end
