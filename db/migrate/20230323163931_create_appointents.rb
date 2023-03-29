class CreateAppointents < ActiveRecord::Migration[7.0]
  def change
    create_table :appointents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true
      t.datetime :appointent_date

      t.timestamps
    end
  end
end
