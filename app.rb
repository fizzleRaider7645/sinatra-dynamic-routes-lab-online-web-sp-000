require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    status 200 
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    status 200
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end
  
  get '/say/:number/:phrase'
    status 200
    @number = params[:number]
    @phrase = params[:phrase]
    # "#{@phrase}" * @number.to_i
  end
end