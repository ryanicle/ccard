json.array!(@api_v1_cards) do |api_v1_card|
  json.extract! api_v1_card, :id
  json.url api_v1_card_url(api_v1_card, format: :json)
end
