namespace :cards do
  desc "TODO"
  task populate: :environment do
    50.times do
      card = Card.new(
        name: Faker::Name.name, number: Faker::Business.credit_card_number,
        expired_month: Faker::Number.number(1), expired_year: 2020,
        security_code: Faker::Number.number(3), provider: Faker::Business.credit_card_type,
        interest_rate: Faker::Number.number(1), category: Faker::Commerce.product_name,
        image: Faker::Avatar.image
      )
      card.save
    end
    puts 'Cards have been added.'
  end

end
