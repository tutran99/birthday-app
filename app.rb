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
 @username = params[:username]
 @todays_date = DateTime.now

p @date
p @todays_date
 erb :index
end
