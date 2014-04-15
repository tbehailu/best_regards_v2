class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :commenter
      t.string :content
      t.timestamps # adds fields to table: created at & updated at
    end
  end
end
