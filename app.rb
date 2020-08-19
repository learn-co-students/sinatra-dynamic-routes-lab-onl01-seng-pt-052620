require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end
  
  get '/square/:number' do 
    @squared = params[:number].to_i * params[:number].to_i
    
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do
    @outcome = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    
    @num.times do 
      @outcome += @phrase
    end
    "#{@outcome}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    else
      "No comment"
    end
  end
  
end