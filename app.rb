require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do 
    @reversed_name = params[:name]
    "#{@reversed_name}".reverse
  end 

  get "/square/:number" do 
    @squared_number = params[:number]
    "#{@squared_number.to_i * @squared_number.to_i}"
  end   

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    "#{@phrase}. " * @number   
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5] 
    "#{a} #{b} #{c} #{d} #{e}"
  end

  get "/:operation/:number1/:number2" do 
    @a = params[:operation]
    @n1 = params[:number1].to_i 
    @n2 = params[:number2].to_i  
    "#{@n1 @a @n2}"
  end 

end