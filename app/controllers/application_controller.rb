class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/basketballs" do
    baskets=Basketball.order('player DESC')
    baskets.to_json
  end

  get "/basketball/:id" do
    basket=Basketball.find(params[:id])
    basket.to_json
  end

  get "/basketballs/:player" do
    baskets=Basketball.find_by_player('Kyle Lowry')
    baskets.to_json
  end

end
