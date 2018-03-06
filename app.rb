require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page.'
end

get '/secret/cat' do
  erb(:index)
end
