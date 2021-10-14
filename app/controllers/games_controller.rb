class GamesController < ApplicationController
  def name
    name = params["my_name"]
    if name[0] == "a"
      render json: {message: "Hey #{name.upcase}, your name starts with the first letter of the alphabet!"}
    else
      render json: {message: "#{name.upcase}"}
    end
  end

  def number
    num = params["my_number"]
    if num.to_i == 36
      render json: {message: "You Guessed Right! The number was 36."}
    elsif num.to_i < 36
      render json: {message: "You guessed too low. Try Again."}
    elsif num.to_i > 36
      render json: {message: "You guessed too high. Try Again."}
    else
      render json: {message: "Not a Valid Input"}
    end
  end

  def villian
    input = params["wildcard"]
    render json: {message: "You fool! You brought the #{input} right to me! With its power I shall rule the world!"}
  end
end
