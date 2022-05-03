require 'rubygems'
require 'sinatra'

PARTS_OF_DAY = ["Morning", "Afternoon", "Evening", "Night"]

get '/' do
  time = Time.now.hour
  if time >= 5 && time < 12
    i = 0
  elsif time >= 12 && time < 17
    i = 1
  elsif time >= 17 && time < 21
    i = 2
  else
    i = 3
  end
  "Good #{PARTS_OF_DAY[i]}, gentleman. I'm a custom microservice."
end

get '/help' do
  "I'm running on Sinatra v#{Sinatra::VERSION}"
end

get '/sum/:a/:b' do
  sum = params[:a].to_i + params[:b].to_i
  return "Sum of #{params[:a]} and #{params[:b]} is #{sum}"
end
