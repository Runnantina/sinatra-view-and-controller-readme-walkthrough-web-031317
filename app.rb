require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do

    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

  # get "/" do
  #   @user = "Ian"
  #   erb :index #@user will be defined as "Ian" in the view
  # end
  #
  # get "/profile" do
  #   erb :profile # @user will be nil here
  # end

end
