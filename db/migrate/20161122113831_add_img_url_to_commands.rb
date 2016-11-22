class AddImgUrlToCommands < ActiveRecord::Migration[5.0]
  def change
    add_column :commands, :img_url, :string
  end
end
