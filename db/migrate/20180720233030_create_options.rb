class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :description
      t.boolean :veracity, default: false
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
