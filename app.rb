require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  @name = 'whatever'
  # 'This is a secret page.'
  erb(:index)

end

get '/secret/random-cat' do
  @name =["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/secret/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]
  erb(:index)
end
