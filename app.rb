require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    send 
    @name = params[:name]
    status 200
    "#{name.reverse}"
  end
end