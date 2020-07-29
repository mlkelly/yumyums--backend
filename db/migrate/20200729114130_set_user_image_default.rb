class SetUserImageDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :img, :string, default: "https://www.sackettwaconia.com/wp-content/uploads/default-profile.png"
  end
end
