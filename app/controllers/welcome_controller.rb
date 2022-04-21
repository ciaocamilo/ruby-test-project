class WelcomeController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    puts('HOLA')
  end

  def sayHello()
    data_1 = params[:data_1]
    data_2 = params[:data_2]

    puts '::::::::::::::::::::::::::::::::'
    puts "#{data_1} y #{data_2}"
    puts '::::::::::::::::::::::::::::::::'

    render json: {message: 'Holaaa Mundo!!'}
  end

end
