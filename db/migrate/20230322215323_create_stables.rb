class CreateStables < ActiveRecord::Migration[7.0]
  def change
    create_table :stables do |t|

      t.timestamps
    end
  end
end
