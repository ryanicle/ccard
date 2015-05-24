require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save route without name, number, expired_month, expired_year, security_code, provider, interest_rate, category, image' do
    card = Card.new
    assert_not  card.save
  end

  test 'should save card' do
    card = Card.new
    card.name = Faker::Name.name
    card.number = Faker::Business.credit_card_number
    card.expired_month = Faker::Number.number(1)
    card.expired_year = 2018
    card.security_code = Faker::Number.number(3)
    card.provider = Faker::Business.credit_card_type
    card.interest_rate = Faker::Number.number(1)
    card.category = Faker::Commerce.product_name
    card.image = Faker::Avatar.image
    assert card.save
  end

end
