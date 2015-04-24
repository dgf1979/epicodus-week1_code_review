require('sinatra')
require('sinatra/reloader')
require('./lib/wordcount')
also_reload('lib/**/*.rb')
require('pry')

get('/test') do
  @test_var = "Sinatra OK"
  erb(:test)
end

#default route and form page
get('/') do
  erb(:search_form)
end

#search results route
get('/results') do
  @word_to_search_for = params.fetch('search_word')
  @sentance_to_search = params.fetch('search_in')
  @word_count = @word_to_search_for.exists_number_of_times_in(@sentance_to_search)
  erb(:search_results)
end
