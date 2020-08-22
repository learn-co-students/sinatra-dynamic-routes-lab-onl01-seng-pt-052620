require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    sqrt = @num ** 2
    "#{sqrt}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}. " * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end


  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      answer = (@num1 + @num2).to_s
    when "subtract"
      answer = (@num1 - @num2).to_s
    when "multiply"
      answer = (@num1 * @num2).to_s
    when "divide" 
      answer = (@num1 / @num2).to_s
    end
  end

end