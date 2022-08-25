# frozen_string_literal: true

require 'rest-client'
require 'json'

# HTTP request service
module APIHandler
  def get_request(url)
    response = RestClient.get(url)

    JSON.parse(response.to_str)
  end
end
