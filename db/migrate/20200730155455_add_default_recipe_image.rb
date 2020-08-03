class AddDefaultRecipeImage < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :img, :string, default: "https://ak.picdn.net/shutterstock/videos/8470912/thumb/11.jpg"
  end
end
