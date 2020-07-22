class CreateRecIngreds < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_ingreds do |t|
      t.string :amount
      t.string :instruction
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
