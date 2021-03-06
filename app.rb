require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get('/goodbye/:name') {
    @name = params[:name]
    "Goodbye, #{@name}."
  }

  get('/multiply/:num1/:num2') {
    @sum = params[:num1].to_i * params[:num1].to_i
    @sum.to_s
  }
end