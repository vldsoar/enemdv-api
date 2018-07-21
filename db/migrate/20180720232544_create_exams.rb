class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.integer :year
      t.integer :kind

      t.timestamps
    end
  end
end
