class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :choose_value 
      t.integer :question_id

      t.timestamps
    end
  end
end
