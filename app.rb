require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    eman = @name.reverse
    "#{eman}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    sq = @num*@num
    "#{sq}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    final_phrase = []
    @number.times {final_phrase << @phrase}
    "#{final_phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end