require 'sinatra'

get '/' do
 'test'
end

get '/form' do
    erb :form
end

get '/birthday' do
p params
 @date = params[:date]
end
