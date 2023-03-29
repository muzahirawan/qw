class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :date_of_birth
      t.string :color
      t.string :image
      t.references :user
      t.references :stable
      t.timestamps
    end
  end
end
