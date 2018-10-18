require 'sinatra'


get '/form' do
    erb :form
end

post '/birthday' do
  @date = params[:date]
  @username = params[:username]
  @todays_date = Time.now.strftime("%d %B %Y")
  @todays_date_format = Time.now.strftime("%d %B")

  @pick_month = params[:month].to_s
  @pick_day = params[:day].to_s
  @user_choice = (@pick_day + " " + @pick_month)
  
  p params
  erb :index
end
