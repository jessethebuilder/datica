require 'rest-client'

class SansoroApiClient
  API_BASE_URL = "http://poc.sansorohealth.com/api/v1"

  def initialize(system_name)
    @api_base = "#{API_BASE_URL}/#{system_name}"
  end

  def get_surgical_cases
    get 'Population/SurgicalCases'
  end

  private

  def get(endpoint)
    response = RestClient.get("#{@api_base}/#{endpoint}")
    return JSON.parse(response.body)
  end
end
