require 'test_helper'

class Api::V1::CardsControllerTest < ActionController::TestCase
  setup do
    @api_v1_card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_card" do
    assert_difference('Card.count') do
      post :create,
            card: {
              name: Faker::Name.name, number: Faker::Business.credit_card_number,
              expired_month: Faker::Number.number(1), expired_year: 2020,
              security_code: Faker::Number.number(3), provider: Faker::Business.credit_card_type,
              interest_rate: Faker::Number.number(1), category: Faker::Commerce.product_name,
              image: Faker::Avatar.image
            }
    end
  end

  test "should show api_v1_card" do
    get :show, id: @api_v1_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_card
    assert_response :success
  end

  test "should update api_v1_card" do
    patch :update, id: @api_v1_card, 
          card: {
            name: Faker::Name.name, number: Faker::Business.credit_card_number,
            expired_month: Faker::Number.number(1), expired_year: 2020,
            security_code: Faker::Number.number(3), provider: Faker::Business.credit_card_type,
            interest_rate: Faker::Number.number(1), category: Faker::Commerce.product_name,
            image: Faker::Avatar.image
          }
  end

  test "should destroy api_v1_card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @api_v1_card
    end
  end
end
