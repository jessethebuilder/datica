class TestController < ApplicationController
  def hello
    render json: 'world'
  end
end
