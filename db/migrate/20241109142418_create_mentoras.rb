class CreateMentoras < ActiveRecord::Migration[7.1]
  def change
    create_table :mentoras do |t|
      t.string :name
      t.string :email
      t.string :habilidades

      t.timestamps
    end
  end
end
