require 'sinatra' 

get '/' do
 'test'
end

get '/form' do
    erb :form
end

post '/birthday' do
p params
 @date = params[:date]
 @todays_date = DateTime.now
 erb :index
end
