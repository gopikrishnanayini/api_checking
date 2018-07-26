class ProfileController < ApplicationController
  def index
  	@response = HTTParty.get("https://api.awrcloud.com/sync.php?action=projects&token=4593dc6843ebd1b46422c3c35b348e6d")
  	@http_party_json = JSON.parse(@response.body)
  end

  def show
    @response = HTTParty.get("https://api.awrcloud.com/sync.php?action=projects&token=4593dc6843ebd1b46422c3c35b348e6d")
  	@http_party_json_total = JSON.parse(@response.body)
  	@http_party_json = @http_party_json_total['projects'][1]
  end
end

