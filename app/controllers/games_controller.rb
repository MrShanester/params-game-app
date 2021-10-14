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
    
  end
end
