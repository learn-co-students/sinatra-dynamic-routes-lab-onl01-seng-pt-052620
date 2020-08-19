require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @namer = params[:name].reverse
    "#{@namer}"
  end

  get '/square/:number' do
    @sqdnumber = params[:number].to_i * params[:number].to_i
    "#{@sqdnumber}"
  end

  get '/say/:number/:phrase' do
    phrase_str = ''
    @repeatthis = params[:number].to_i
    @sentence = params[:phrase]
    @repeatthis.times { phrase_str += @sentence }
    phrase_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5]
    "#{@sentence}." 
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      (@num1 + @num2).to_s
    elsif @operation == "subtract"
      (@num1 - @num2).to_s
    elsif @operation == "multiply"
      (@num1 * @num2).to_s
    elsif @operation == "divide"
      (@num1 / @num2).to_s
    end
  end



end