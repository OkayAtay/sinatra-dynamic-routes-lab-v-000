require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed_name = @user_name.reverse!
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num*@num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @say_phrase = @number.times do
      print @phrase
    end
    @say_phrase.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 } #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @operation = "+"
    elsif @operation == "subtract"
      @operation = "-"
    elsif @operation == "multiply"
      @operation = "*"
    else
      @operation = "/"
    end
    @total = @number1 @operation
    "#{@total}"
  end
end
