require 'rails_helper'

describe 'Test Requests', type: :request do
  describe 'Hello' do
    it 'should return "world"' do
      get '/hello'
      response.body.should == 'world'
    end
  end
end
