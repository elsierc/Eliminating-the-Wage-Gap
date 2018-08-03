require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :home
  end
  
  get '/index' do
    return erb :index
  end
  
  post '/index' do
    @career_response = params[:career]
    @lowest_ratio_response = params[:ratio]
    @wage_gap_response = params[:wage_gap]
    @pay_parity_response = params[:wage_gap_close]
  
  career_quiz = Career_quiz.new
  @result = career_quiz.play_quiz(@career_response)
  # @result1 = career_quiz.play_quiz(@lowest_ratio_response)
  
  if @result == "teaching"
    erb :teaching
  elsif  @result == "engineering"
    erb :engineering
  elsif @result == "law"
    erb :law
  elsif @result == "politics"
    erb :politics
  elsif @result == "computer_engineering"
    erb :computer_engineering
  elsif @result == "medical"
    erb :medical
  elsif @result == "acting_film"
    erb :acting_film
  end
  
  end 
end
