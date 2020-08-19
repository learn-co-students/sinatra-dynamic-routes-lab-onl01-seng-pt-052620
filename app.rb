require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @squared_num = (params[:number].to_i**2)
    "#{@squared_num}"
  end

  get "/say/:number/:phrase" do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}" }
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    str = ""
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    str += "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
    str
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end
end