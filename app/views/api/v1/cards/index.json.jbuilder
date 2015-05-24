json.array!(@api_v1_cards) do |api_v1_card|
  json.extract! api_v1_card, :id, :name, :number, :expired_month, :expired_year,
                              :security_code, :provider, :interest_rate, :category, :image,
                              :created_at, :updated_at
end
