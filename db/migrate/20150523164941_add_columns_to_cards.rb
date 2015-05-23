class AddColumnsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :provider, :string, :after => :security_code
    add_column :cards, :interest_rate, :decimal, :after => :provider
    add_column :cards, :category, :string, :after => :interest_rate
    add_column :cards, :image, :string, :after => :category
  end
end
