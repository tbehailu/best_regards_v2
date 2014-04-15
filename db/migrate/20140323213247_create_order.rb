class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :email
      t.string :data
      t.string :data_type
      t.string :stripe_data
      t.timestamps # adds fields to table: created at & updated at
    end
  end
end
