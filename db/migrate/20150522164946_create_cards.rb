class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string  'name'
      t.string  'number'
      t.integer 'expired_month'
      t.integer 'expired_year'
      t.string  'security_code'
      t.datetime  'created_at'
      t.datetime  'updated_at'
    end
  end
end
