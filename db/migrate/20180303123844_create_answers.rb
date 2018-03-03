class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :option
      t.integer :question_id
      t.integer :student_id

      t.timestamps
    end
  end
end
