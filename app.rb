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

get '/secret/cat' do
  @name =["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
