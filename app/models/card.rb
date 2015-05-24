class Card < ActiveRecord::Base
  validates :name, presence: true
  validates :number, presence: true
  validates :expired_month, presence: true
  validates :expired_year, presence: true
  validates :security_code, presence: true
  validates :provider, presence: true
  validates :interest_rate, presence: true
  validates :category, presence: true
  validates :image, presence: true
end
