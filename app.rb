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
  
  get '/say/:number/:phrase' do
    status 200
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}" * @number.to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    status 200
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @oper
      when "subtract"
        (@number1 - @number2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end
end