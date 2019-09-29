require 'sinatra/base'

class FakeSansoroApi < Sinatra::Base
  get '/api/v1/test_system/Population/SurgicalCases' do
    status 200
    content_type :json
    json_response('surgical_cases')
  end

  get '*' do
    byebug
  end

  private

  def json_response(path)
    File.read("#{Rails.root}/spec/fixtures/datica/#{path}.json")
  end
end
